#!/bin/bash

set -e

IMAGE="30727/dev:latest"

echo "Stopping old container..."
docker stop react-app || true
docker rm react-app || true

echo "Pulling latest image..."
docker pull $IMAGE

echo "Running container..."
docker run -d -p 80:80 --name react-app $IMAGE

echo "Deployment SUCCESS 🚀"

