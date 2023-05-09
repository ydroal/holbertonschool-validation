.PHONY: help build run stop clean test

help: ## Display this help message
	@cat Makefile | grep '##' | tr -d '##'

build: ##Compile the source code of the application
	go build -o awesome-api

run: ##Run the application in the background
	./awesome-api >./awesome-api.log 2>&1 &

stop: ##Stop the application
	-kill "$(shell pgrep awesome-api)"

clean: stop  ##Stop the application and delete the binary and log file
	-rm ./awesome-api
	-rm ./awesome-api.log

test: ##Test the application to ensure it behaves as expected
	curl http://localhost:9999
	curl http://localhost:9999/health