[![CircleCI](https://dl.circleci.com/status-badge/img/gh/abuhanaan/ndProject4-ml-microservice-k8s/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/abuhanaan/ndProject4-ml-microservice-k8s/tree/main)
# Project Overview

### Operationalizing A Machine Learning Microservice API. 

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. This project operationalizes a Python flask app that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
More details about the data, which was initially taken from Kaggle, can be gotten on [the data source site](https://www.kaggle.com/c/boston-housing). 
___

### Project Tasks

The goal of this project is to operationalize a working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. The following tasks were completed in this project:
* Test project code using linting
* Completion of a Dockerfile for containerization of the application
* Deployment of the containerized application using Docker and making a prediction
* Improving the log statements in the source code for the application
* Configuration of Kubernetes and creation of a Kubernetes cluster
* Deployment of a container using Kubernetes and making prediction
* Upload a complete Github repo with CircleCI to indicate that code has been tested
---

### Short descriptions of folders and files in this repository

* model_data: this folder contains the pretrained `sklearn` model and housing csv data files
* output_txt_files: this folder contains sample output logs from running `run_docker.sh` and `run_kubernetes.sh` scripts
* app.py: this file contains the codebase for the flask app
* Dockerfile: contains step by step instructions to containerize the aplication
* make_predictions.sh: this file is the bash script to make predictions
* Makefile: Contains instructions on environment setup, dependencies installations and lint tests
* README.md: A documentation of the project
* requirements.txt: list of environment dependencies
* resize.sh: a script for resizing space volume on AWS cloud9
* run_docker.sh: bash script to run the application in Docker
* run_kubernetes.sh: bash script to run the application in Kubernetes
* upload_docker.sh: bash script to upload the docker imae to docker hub
___


## Getting Started

### Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
