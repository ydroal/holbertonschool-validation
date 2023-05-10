# Awesome API

This is a simple HTTP API for the Awesome Inc. website.

# Prerequisites

Before you start, make sure you have the following installed:

Go (version 1.15)
curl

## Features

- Returns a 404 Not Found for requests to the root path ("/") (e.g. http://localhost:9999/ or http://localhost:9999)
- Returns "ALIVE" for requests to the "/health" path (e.g. http://localhost:9999/health)

## Lifecycle

We have provided a Makefile to automate the life-cycle of the application. 

- `make lint`: Run static analysis on the source code
- `make build`: Compile the source code of the application
- `make run`: Run the application in the background
- `make stop`: Stop the application
- `make clean`: Stop the application and delete the binary and log file
- `unit-tests`: Run the unit tests with code coverage
- `make test`: Test the application to ensure it behaves as expected
- `make help`: Display a list of all the available commands

