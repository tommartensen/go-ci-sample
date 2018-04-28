FROM scratch

ADD .env .env
ADD go-ci-sample go-ci-sample

CMD ["/go-ci-sample"]
