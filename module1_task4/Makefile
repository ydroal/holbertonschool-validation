# 環境変数の定義
POST_TITLE ?=
POST_NAME ?=

# コマンドの定義
build:    ## Generate the website from the markdown and configuration files in the directory dist/.
	hugo
clean:    ## Cleanup the content of the directory dist/
	rm -rf dist/*
post:     ## Create a new blog post with filename and title come from the environment variables.
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md


help:			## Prints out the list of targets and their usage.
	@cat Makefile | grep '##' | tr -d '##'
