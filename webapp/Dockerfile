############################################################
# Dockerfile to build the Enterprise Archive example web  
# application container images.
#
# Based on Node
############################################################

# Base image from latest Node (official image).
FROM node:latest

# File author/maintainer
MAINTAINER Stellan Söderström <stellan.soderstrom@gmail.com.com>

#################### INSTALLATION START ####################

# Curl is used for testing and git for downloading the source
RUN apt-get update && apt-get install -y \
    git \
&& rm -rf /var/lib/apt/lists/*

# Get the source code
# First, a little trick to invalidate the docker cache
ADD https://api.github.com/repos/ss73/kds-webapp/git/refs/heads/master version.json
# Next, clone into the destination
RUN git clone -b master https://github.com/ss73/kds-webapp.git /opt/webapp/

##################### INSTALLATION END #####################
EXPOSE 32000
ENTRYPOINT node /opt/webapp/app.js

