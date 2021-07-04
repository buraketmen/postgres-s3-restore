#! /bin/sh

# exit if a command fails
set -e

apk update

apk add postgresql-client
apk add python3 py3-pip
pip install awscli
apk del py-pip

# cleanup
rm -rf /var/cache/apk/*
