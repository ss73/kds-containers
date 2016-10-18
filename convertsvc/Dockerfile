############################################################
# Dockerfile to build pdf to text converter microservice 
# container images.
#
# Based on Node
############################################################

# Base image from latest Node (official image).
FROM node:latest

# File author/maintainer
MAINTAINER Stellan Söderström <stellan.soderstrom@gmail.com>

#################### INSTALLATION START ####################

# Install node.js and the pdftotext command found in poppler
# Curl is used for testing and git for downloading the source
RUN apt-get update && apt-get install -y \
    poppler-utils \
    curl \
    git \
&& rm -rf /var/lib/apt/lists/*

# Get the source code
RUN git clone -b docker https://github.com/ss73/kds-convert_service.git /opt/convert_service/

##################### INSTALLATION END #####################
EXPOSE 32400
ENTRYPOINT node /opt/convert_service/app.js

