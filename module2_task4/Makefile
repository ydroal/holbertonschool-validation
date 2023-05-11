# 環境変数の定義
POST_TITLE ?=
POST_NAME ?=

# コマンドの定義
build: check  ## Generate the website from the markdown and configuration files in the directory dist/.
	hugo -d dist

check:	## Succeed by default, and fail when presented with a dead link or a badly written Markdown file
	markdownlint --fix README.md content/posts/*
	markdown-link-check README.md content/posts/*

validate:	## Validate generated HTML with W3C validator.
	python3 /opt/W3C-Validator/w3c_validator.py ./dist/index.html || true

clean: ## Cleanup the content of the directory dist/
	rm -rf dist/*

post: ## Create a new blog post with filename and title come from the environment variables.
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help:	## Prints out the list of targets and their usage.
	@cat Makefile | grep '##' | tr -d '##'
