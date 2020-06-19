#!/bin/bash

set -e

OUTPUT_DIR=out
mkdir -p "${OUTPUT_DIR}"

# CSS compilation
node_modules/less/bin/lessc site.less > "${OUTPUT_DIR}/site.css"

# Copy assets
cp -r font/ icon/ "${OUTPUT_DIR}"
cp index.html "${OUTPUT_DIR}"

# Do the docker build!
docker build --pull --rm -f "Dockerfile" -t gunsch.cc:latest "."
