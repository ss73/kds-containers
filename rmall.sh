#!/bin/sh
cd $(dirname "$0")
echo "Removing Batch Service"
docker rm batchsvc
echo "Removing Convert Service (PDF-to-text)"
docker rm convsvc
echo "Removing Web Application"
docker rm webapp
echo "Removing Blob Service"
docker rm blobsvc
echo "Removing Index service"
docker rm indexsvc
echo "Removing Solr"
docker rm solr