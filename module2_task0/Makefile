.PHONY: help build run stop clean test

help:
	@echo "build: Compile the source code of the application"
	@echo "run: Run the application in the background"
	@echo "stop: Stop the application"
	@echo "clean: Stop the application and delete the binary and log file"
	@echo "test: Test the application to ensure it behaves as expected"

build:
	go build -o awesome-api

run:
	./awesome-api >./awesome-api.log 2>&1 &

stop:
	-kill "$(shell pgrep awesome-api)"

clean: stop
	-rm ./awesome-api
	-rm ./awesome-api.log

test:
	curl http://localhost:9999
	curl http://localhost:9999/health