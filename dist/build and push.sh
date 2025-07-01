#!/bin/bash

DOCKER_USERNAME="keerthivasan0418"
IMAGE_NAME="keerthivasan0418/dev"              
IMAGE_TAG=$(git rev-parse --short HEAD)   

echo "Logging into Docker Hub..."
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"  

echo "Building Docker image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG -f dist/assets/Dockerfile .


docker tag $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG $DOCKER_USERNAME/$IMAGE_NAME:latest

echo "Pushing image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$IMAGE_TAG
docker push $DOCKER_USERNAME/$IMAGE_NAME:latest


