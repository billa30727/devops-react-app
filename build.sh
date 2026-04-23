#!/bin/bash

set -e

# Correct repo

REPO="30727/dev"

# Tag

TAG=$(date +%s)

echo "Building image..."
docker build -t $REPO:$TAG .

echo "Tagging latest..."
docker tag $REPO:$TAG $REPO:latest

echo "Login to Docker Hub..."
echo "Admin@12345" | docker login -u 30727 --password-stdin

echo "Pushing image..."
docker push $REPO:$TAG
docker push $REPO:latest

echo "SUCCESS 🚀"

