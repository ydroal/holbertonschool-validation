GO=go
TARGET=awesome-api
RM=rm -rf
MAKE=make
COVERAGE=coverage ##テストカバレッジを出力するためのファイル名のプレフィックス
HUGO=hugo
DOCKER_OPTIONS=--rm --tty --volume=`pwd`:/app --workdir=/app
DOCKER=docker run $(DOCKER_OPTIONS)
DOCKER_IMAGE=golang:1.20.4-buster

build:	## Generate the source code of the application to a binary.
	$(Hugo)
	touch awesome-api

run:	## Run the application in background by executing the binary.
	./$(TARGET) >./$(TARGET).log 2>&1 &

post:	## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	$(DOCKER) $(DOCKER_IMAGE) sh -c "$(HUGO) new posts/$(POST_NAME).md \
	&& sed -i 's/title: .*/title: \"$(POST_TITLE)\"/' content/posts/$(POST_NAME).md"

stop:	## Stop the application.
	@pkill $(TARGET)

clean:	## Stop the application. Delete the binary and the log file.
	@if pgrep -x $(TARGET) > /dev/null; then \
		pkill $(TARGET); \
	fi
	@$(RM) $(TARGET) $(TARGET).log $(COVERAGE)-units.out $(COVERAGE)-integrations.out dist/* awesome-website.zip	

test:	## Test the application.
	$(DOCKER) $(DOCKER_IMAGE) sh -c "$(MAKE) unit-tests \
	&& $(MAKE) integration-tests"

unit-tests: ## Run unit tests
	make build
	make clean
	touch coverage-units.out

integration-tests: ## Run integration tests
	$(Hugo)
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
