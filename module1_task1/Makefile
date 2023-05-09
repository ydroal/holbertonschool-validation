# 環境変数の定義
POST_TITLE ?=
POST_NAME ?=

# コマンドの定義
build:
	hugo
clean:
	rm -rf dist/*
post:
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md
