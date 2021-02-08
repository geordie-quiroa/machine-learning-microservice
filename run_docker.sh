#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t predict_model:udacit-ml .
# Step 2: 
# List docker images
docker image ls | grep predict_model

# Step 3: 
# Run flask app
docker run -p 8000:80 predict_model:udacity-ml
