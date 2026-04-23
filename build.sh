#!/bin/bash

set -e

# Docker username

DOCKER_USERNAME="30727"

# Tag (timestamp)

TAG=$(date +%s)

# Branch (fixed for Jenkins)

BRANCH="dev"

echo "Branch: $BRANCH"
echo "Tag: $TAG"

if [ "$BRANCH" == "dev" ]; then
REPO="$DOCKER_USERNAME/dev"
elif [ "$BRANCH" == "master" ]; then
REPO="$DOCKER_USERNAME/prod"
else
echo "Unsupported branch"
exit 1
fi

echo "Building image..."
docker build -t $REPO:$TAG .

echo "Tagging latest..."
docker tag $REPO:$TAG $REPO:latest

echo "Pushing image..."
docker push $REPO:$TAG
docker push $REPO:latest

echo "Done 🚀"
