#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=capstone .

# Step 2: 
# List docker images
docker image ls cpstone*

# Step 3: 
# Run interactive shell
#docker run -it mlk8s bash

# Step 3: 
# Run flask app
docker run -p 80:80 capstone
