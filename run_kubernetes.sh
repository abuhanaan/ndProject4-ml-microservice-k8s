#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=abuhanaan/ml-k8s-microsevice-p4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-k8s-microsevice-p4\
    --image=$dockerpath\
    --port=80 --labels app=ml-k8s-microsevice-p4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-k8s-microsevice-p4 8000:80

