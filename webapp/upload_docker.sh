#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=cazacov/learning:capstone

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Authenticate
docker login -u cazacov

# Build
docker build --tag=capstone .

# Tag
docker tag capstone $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath