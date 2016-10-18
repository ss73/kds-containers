############################################################
# Dockerfile to build blob storage and retrieval microservice 
# container images.
#
# Based on Node
############################################################

# Base image from latest Node (official image).
FROM node:latest

# File author/maintainer
MAINTAINER Stellan Söderström <stellan.soderstrom@gmail.com>

#################### INSTALLATION START ####################

# Curl is used for testing and git for downloading the source
RUN apt-get update && apt-get install -y \
    curl \
    git \
&& rm -rf /var/lib/apt/lists/*

# Get the source code
RUN git clone -b docker https://github.com/ss73/kds-blob_service.git /opt/blob_service/

##################### INSTALLATION END #####################
EXPOSE 32500
ENTRYPOINT node /opt/blob_service/app.js

