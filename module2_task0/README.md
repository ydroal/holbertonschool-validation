# Awesome API

This is a simple HTTP API for the Awesome Inc. website.

## Features

- Returns a 404 Not Found for requests to the root path ("/") (e.g. http://localhost:9999/ or http://localhost:9999)
- Returns "ALIVE" for requests to the "/health" path (e.g. http://localhost:9999/health)

## Building and Running the Application

We have provided a Makefile to automate the life-cycle of the application. 

- `make build`: Compile the source code of the application
- `make run`: Run the application in the background
- `make stop`: Stop the application
- `make clean`: Stop the application and delete the binary and log file
- `make test`: Test the application to ensure it behaves as expected

You can also view a list of all the available commands by running `make help`.


