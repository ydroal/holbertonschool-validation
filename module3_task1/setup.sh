#!/bin/bash

apt-get update

if ! dpkg -s make >/dev/null 2>&1; then
  apt-get install -y make
fi
if ! dpkg -s curl >/dev/null 2>&1; then
  apt-get install -y curl
fi
if ! dpkg -s hugo >/dev/null 2>&1; then
  # Download lastest release of 'Hugo'
  curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb
  # Install the latest version of 'Hugo'
  apt-get install ./install_hugo.deb
# Install golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.42.1
