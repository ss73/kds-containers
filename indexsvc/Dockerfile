############################################################
# Dockerfile to build index storage and retrieval microservice 
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
# First, a little trick to invalidate the docker cache
ADD https://api.github.com/repos/ss73/kds-index_service/git/refs/heads/master version.json
RUN git clone -b master https://github.com/ss73/kds-index_service.git /opt/index_service/

##################### INSTALLATION END #####################
EXPOSE 32600
ENTRYPOINT node /opt/index_service/app.js

