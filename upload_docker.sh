#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=osmanahmedshell/udacity_project

# Step 2:  
# Authenticate & tag
# dockerpath has been set to the same as tag
echo "Docker ID and Image: $dockerpath"
# Authenticate user from the command line prompt
docker login
tagname=master

# Step 3:
docker push "${dockerpath}:${tagname}"