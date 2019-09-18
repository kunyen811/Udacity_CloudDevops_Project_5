#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=kunyen811/dev

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username kunyen811
# Enter the password when the authentication pop up on the terminal
docker tag 94d76b9b47f9 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath