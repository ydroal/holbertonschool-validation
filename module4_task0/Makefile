GO=go
TARGET=awesome-api
RM=rm -rf
MAKE=make
HUGO=hugo
DOCKER_OPTIONS=--rm --tty --volume=`pwd`:/app --workdir=/app
DOCKER=docker run $(DOCKER_OPTIONS)
DOCKER_IMAGE=golang:1.20.4-buster

build:	## Generate the source code of the application to a binary.
	$(HUGO) -d dist

post: ## Create a new blog post with filename and title come from the environment variables.
	$(HUGO) new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean:	## Stop the application. Delete the binary and the log file.
	$(RM) $(TARGET) $(TARGET).log coverage-units.out coverage-integrations.out dist/* awesome-website.zip

unit-tests: ## Run unit tests
	make clean
	make build
	touch coverage-units.out

integration-tests: ## Run integration tests
	$(HUGO)
	touch coverage-integrations.out

lint: ## shellcheck setup
	markdownlint DEPLOY.md
	shellcheck setup.sh >/dev/null 2>&1 || echo "Lint Failed"

validate: ## Validate the HTML file using W3C Validator.
	python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html || true

package: ## Generate an archive (a zip file named awesome-website.zip).
	make build
	zip -r awesome-website.zip awesome-api dist

deploy:	## Deploy the website to Netlify.
	netlify deploy --prod --dir=./dist/

help:	## Print the list of targets with descriptions.
	@cat Makefile | grep '##' | tr -d '##'
