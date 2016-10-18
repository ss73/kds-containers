############################################################
# Dockerfile to build solr with a core named 'archive' 
#
# Based on solr
############################################################

# Base image from latest Solr (official image).
FROM solr:latest

# File author/maintainer
MAINTAINER Stellan Söderström <stellan.soderstrom@gmail.com>

#################### INSTALLATION START ####################

WORKDIR /opt/solr/server/solr/
ADD core_archive /opt/solr/server/solr/archive
USER root
RUN chown -R solr /opt/solr/server/solr
USER solr

##################### INSTALLATION END #####################

