#!/bin/bash

set -e

# Docker repo (your correct repo)

REPO="30727/dev"

# Unique tag

TAG=$(date +%s)

echo "Using repo: $REPO"
echo "Tag: $TAG"

# Build image

echo "Building Docker image..."
docker build -t $REPO:$TAG .

# Tag as latest

echo "Tagging latest..."
docker tag $REPO:$TAG $REPO:latest

# Push images

echo "Pushing image..."
docker push $REPO:$TAG
docker push $REPO:latest

echo "Build & Push SUCCESS 🚀"

