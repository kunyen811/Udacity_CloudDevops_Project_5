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
docker tag dec76a6067d7 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath