#!/bin/bash

set -e



# Force safe tag

TAG=$(date +%s)

# Force branch manually (since Jenkins may not detect)

BRANCH="dev"

echo "Branch: $BRANCH"
echo "Tag: $TAG"

if [ "$BRANCH" == "dev" ]; then
REPO="$DOCKER_USERNAME=30727"
elif [ "$BRANCH" == "master" ]; then
REPO="$DOCKER_USERNAME=30727"
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
