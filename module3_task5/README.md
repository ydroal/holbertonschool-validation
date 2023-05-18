## Prerequisites

- Hugo
- Python3
- Netlify CLI

## Lifecycle

- build: Compile the source code of the website with the command make build.

- run: Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log with the command ./awesome-api >./awesome-api.log 2>&1 &.

- stop: Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application. For instance: kill "$(pgrep awesome-api)".

- post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME

- clean: Delete the zip file of the website and the dist/ directory.

- test: Run all tests to ensure that the website behaves as expected.

- unit-tests: Run unit tests.

- integration-tests: Run integration tests.

- lint: Lint the website's code with the command make lint.

- check: Lint markdonw source, check dead links.

- validate: Validate the file dist/index.html using the command line Holberton’s W3C Validator.

- package: Package the website into a zip file with the command make package.

- help: Display help message.

## Build Workflow
The build workflow is defined in the .github/workflows/module3_task3.yml file. This workflow is triggered whenever changes are pushed to the main branch or a new tag is created. It automates the build process of the website, generates a zip file of the website when all the checks and tests are successful, and creates a new GitHub release with the zip file and the content of DEPLOY.md when the workflow is triggered by a new tag.

The build workflow includes the following steps:

- Checkout the repository code using the actions/checkout@v3 action.
- Install the necessary dependencies using the setup.sh script.
- Navigate to the directory containing the program code.
- Build the website using the make build command.
- Create a new blog post using the make post command.
- Clean up the dist/ directory using the make clean command.
- Package the website into a zip file using the make package command.
- Archive the zip file only if all the previous steps are successful using the actions/upload-artifact@v3 action.
- Create a new GitHub release with the zip file and the content of DEPLOY.md only if the workflow is triggered by a new tag using the softprops/action-gh-release@v1 action.
- Deploy the website to a Netlify preview site on Pull Requests and to production on the principal branch using the nwtgck/actions-netlify@v2.0 action.