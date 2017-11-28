############################################################
# Dockerfile to build the Enterprise Archive background job  
# application container images.
#
# Based on Node
############################################################

# Base image from latest Node (official image).
FROM node:latest

# File author/maintainer
MAINTAINER Stellan Söderström <stellan.soderstrom@gmail.com>

#################### INSTALLATION START ####################
ARG http_proxy
ARG https_proxy
ARG no_proxy

RUN echo "Proxy server: $http_proxy"
RUN echo "No proxy for: $no_proxy"

# Curl is used for testing and git for downloading the source
RUN apt-get update && apt-get install -y \
    git \
    cron \
&& rm -rf /var/lib/apt/lists/*

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/batch-cron
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/batch-cron
# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Get the source code
RUN git clone -b master https://github.com/ss73/kds-batch-service.git /opt/batch_service/

##################### INSTALLATION END #####################
EXPOSE 32700
ENTRYPOINT cron && node /opt/batch_service/app.js

