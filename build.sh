#!/bin/bash

IMAGE_NAME=30727/dev
TAG=latest

docker build -t 30727/dev:$latest .
docker push 30727/dev:$latest
