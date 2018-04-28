TEST_REPORT = "$(shell pwd)/gen/test_report.xml"
COVER_REPORT = "$(shell pwd)/gen/profile.cov"
BINARY_NAME = "go-ci-sample"

all: fmt lint test build

test:
	mkdir -p gen
	if ! test -f ${GOPATH}/bin/go2xunit; then go get github.com/tebeka/go2xunit; fi
	go test -v ./... 2>&1 | ${GOPATH}/bin/go2xunit -output ${TEST_REPORT} 

test_and_coverage:
	mkdir -p gen
	if ! test -f ${GOPATH}/bin/go2xunit; then go get github.com/tebeka/go2xunit; fi
	go test -v ./...  -covermode=count -coverprofile=${COVER_REPORT} | ${GOPATH}/bin/go2xunit -output ${TEST_REPORT}
	if ! test -f ${GOPATH}/bin/gocoveralls; then go get github.com/mattn/goveralls; fi
	${GOPATH}/bin/goveralls -repotoken ${COVERALLS_TOKEN} -service=travis-ci  -coverprofile=${COVER_REPORT}

install: 
	if ! test -f ${GOPATH}/bin/dep; then curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh; fi
	${GOPATH}/bin/dep ensure

build:
	go build -o ${BINARY_NAME}

fmt:
	go fmt $$(go list ./... | grep -v /vendor/);

lint:
	if ! test -f ${GOPATH}/bin/golint; then go get golang.org/x/lint/golint; fi
	${GOPATH}/bin/golint main.go
	${GOPATH}/bin/golint test/

clean: 
	rm -r gen vendor
