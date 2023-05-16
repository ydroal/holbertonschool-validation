## Prerequisites

## Lifecycle

- build: compile the source code of the application to a binary named awesome-api (the name awesome-api comes from the command go mod init github.com/<your github handle>/awesome-api) with the command go build. The first build may takes some times.

- run: Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log with the command ./awesome-api >./awesome-api.log 2>&1 &.

- stop: Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application. For instance: kill "$(pgrep awesome-api)".

- post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME

- clean: Stop the application. Delete the binary awesome-api and the log file awesome-api.log

- test: You want to test it to ensure that it behaves as expected.

- unit-tests: Run unit tests.

- integration-tests: Run integration tests.

- lint: Lint go lang code.

- check: Lint markdonw source, check dead links.

- validate: Validate the file dist/index.html using the command line Holberton’s W3C Validator.

- help: Display help message.

## Build Workflow
The build workflow is defined in the .github/workflows/module3_task2.yml file. This workflow is triggered whenever changes are pushed to the main branch. It automates the build process of the website, and generates a zip file of the website when all the checks and tests are successful.

The build workflow includes the following steps:

- Checkout the repository code using the actions/checkout@v3 action.
- Install the necessary dependencies using the setup.sh script.
- Navigate to the directory containing the program code.
- Build the website using the make build command.
- Create a new blog post using the make post command.
- Clean up the dist/ directory using the make clean command.
- Package the website into a zip file using the make package command.
- Archive the zip file only if all the previous steps are successful using the actions/upload-artifact@v3 action.