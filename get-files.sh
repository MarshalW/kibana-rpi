#!/bin/bash

VERSION=$1

rm -rf ./workbench/v$VERSION || true

mkdir ./workbench/v$VERSION
mkdir ./workbench/v$VERSION/bin
mkdir ./workbench/v$VERSION/config

curl https://raw.githubusercontent.com/elastic/dockerfiles/v$VERSION/kibana/Dockerfile \
 --output ./workbench/v$VERSION/Dockerfile
curl https://raw.githubusercontent.com/elastic/dockerfiles/v$VERSION/kibana/bin/kibana-docker \
 --output ./workbench/v$VERSION/bin/kibana-docker
curl https://raw.githubusercontent.com/elastic/dockerfiles/v$VERSION/kibana/config/kibana.yml \
 --output ./workbench/v$VERSION/config/kibana.yml