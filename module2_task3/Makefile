.PHONY: help lint build run stop clean test unit-tests integration-tests

help: ##Display this help message
	@cat Makefile | grep '##' | tr -d '##'

lint: ##Run static analysis on the source code
	golangci-lint run

build: lint ##Compile the source code of the application
	go build -o awesome-api

run: ##Run the application in the background
	./awesome-api >./awesome-api.log 2>&1 &

stop: ##Stop the application
	-kill "$(shell pgrep awesome-api)"

clean: stop  ##Stop the application and delete the binary and log file
	-rm ./awesome-api
	-rm ./awesome-api.log
	-rm ./coverage-units.out
	-rm ./coverage-integrations.out

unit-tests: ##Run the unit tests with code coverage
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ##Run the integration tests with code coverage
	go test -v -coverprofile=coverage-integrations.out

test: unit-tests integration-tests ##Run both Unit Tests and Integration Tests instead of the curl commands

