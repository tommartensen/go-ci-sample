# Golang Sample Project
[![Go Report Card](https://goreportcard.com/badge/github.com/tommartensen/go-ci-sample)](https://goreportcard.com/report/github.com/tommartensen/go-ci-sample) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/tommartensen/go-ci-sample/blob/master/LICENSE)

|Branch|Build Status|Coverage|
|------|------------|--------|
|Master|[![Build Status](https://travis-ci.org/tommartensen/go-ci-sample.svg?branch=master)](https://travis-ci.org/tommartensen/go-ci-sample)|[![Coverage Status - Master](https://coveralls.io/repos/github/tommartensen/go-ci-sample/badge.svg?branch=master)](https://coveralls.io/github/tommartensen/go-ci-sample?branch=master)|
|Develop|[![Build Status](https://travis-ci.org/tommartensen/go-ci-sample.svg?branch=develop)](https://travis-ci.org/tommartensen/go-ci-sample)|[![Coverage Status - Develop](https://coveralls.io/repos/github/tommartensen/go-ci-sample/badge.svg?branch=develop)](https://coveralls.io/github/tommartensen/go-ci-sample?branch=develop)|

## What is this?
A source of inspiration for your CI setup with Travis CI, Dockerhub and Golang.

## Usage
1. Fork repository into `<username>/<project>`.
1. Update references to old repository into new repository, in:
	* `README.md`
	* `Makefile` (binary name)
	* `Dockerfile` (binary name)
	* `.dockerignore` (binary name)
1. [Activate Travis CI for your repository](https://travis-ci.org/)
1. [Activate Coveralls for your repository](https://coveralls.io/)
1. Set environment variables for Travis CI on `https://travis-ci.org/<username>/<project>/settings` (uncheck `Show during build`)

	| Environment Variable | Value |
	| ---------------------|-------|
	| DOCKER_USERNAME      | Username on [Dockerhub](https://hub.docker.com)|
	| DOCKER_PASSWORD      | Password on [Dockerhub](https://hub.docker.com)|
	| COVERALLS_TOKEN      | Repository token on [Coveralls](https://coveralls.io)|

## Extension Points
* Other own packages? Add them also in the linter!
* Own docker registry? Configure in `scripts/docker_build_and_push.sh`
* ...
