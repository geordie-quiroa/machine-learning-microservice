#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=gquiroa/operationalize-ml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath
docker login --username gquiroa
docker tag predict_model:udacity-ml gquiroa/operationalize-ml:udacity-ml

# Step 3:
# Push image to a docker repository
docker push $dockerpath:udacity-ml
