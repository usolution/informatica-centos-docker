# informatica-centos-docker
Script to create Docker image with CentOS and Informatica Cloud Secure Agent

# Steps to create the Docker image
# Step #1
  Download the latest informatica secure agent linux installable in local where you checkout the files from this repo and Install & Start the docker in local machine
# Step #2
  Checkout all the file from this repository and excute the below docker commands
  1. docker build -t unico/centosinfa .
  2. docker images
  3. docker run unico/centosinfa [INFA USERNAME] [INFA PASSWORD]
# Step #3
  Execute the below command to do a SSH on the docker container
  1. docker ps
  1. docker exec -it [CONTAINER_ID] /bin/bash
