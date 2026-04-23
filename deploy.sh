#!/bin/bash

IMAGE_NAME=30727/dev
TAG=latest

docker pull 30727:$latest

docker stop react-container || true
docker rm react-container || true

docker run -d -p 80:80 --name react-container 30727:$latest
