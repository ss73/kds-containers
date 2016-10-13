#!/bin/sh
docker run -d --name indexsvc --link solr index_svc:1.0 
