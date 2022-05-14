#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=lebaotoan/udacity-proj4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag proj4:v1.0 $dockerpath:v1.0
docker login --username=lebaotoan -p Password1234!
# Step 3:
# Push image to a docker repository
docker push $dockerpath
