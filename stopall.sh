#!/bin/sh
cd $(dirname "$0")
echo "Stopping Batch Service --> Linked to Index, Blob and Convert Services"
docker stop batchsvc
echo "Stopping Convert Service (PDF-to-text)"
docker stop convsvc
echo "Stopping Web Application --> Linked to Index and Blob Services"
docker stop webapp
echo "Stopping Blob Service"
docker stop blobsvc
echo "Stopping Index service --> Linked to Solr"
docker stop indexsvc
echo "Stopping Solr"
docker stop solr