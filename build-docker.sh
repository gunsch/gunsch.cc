#!/bin/bash

set -e

# Do the docker build!
docker build --pull --rm -f "Dockerfile" -t gunsch.cc:latest "."
