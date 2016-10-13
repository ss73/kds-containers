#!/bin/sh
cd $(dirname "$0")
echo "Starting Solr"
docker start solr
echo "Starting Index service --> Linked to Solr"
docker start indexsvc
echo "Starting Blob Service"
docker start blobsvc
echo "Starting Web Application --> Linked to Index and Blob Services"
docker start webapp
echo "Starting Convert Service (PDF-to-text)"
docker start convsvc
echo "Starting Batch Service --> Linked to Index, Blob and Convert Services"
docker start batchsvc

