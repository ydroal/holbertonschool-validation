#!/bin/bash
# スクリプト内のコマンドがエラーを返した場合にスクリプトが終了するように設定
set -e

apt-get update
apt-get install -y hugo make

make build