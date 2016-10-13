#!/bin/sh
cd $(dirname "$0")
docker build -t es_solr:1.0 .
