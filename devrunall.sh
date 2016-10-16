#!/bin/sh
cd $(dirname "$0")
echo "Starting Solr"
./solr/run.sh
echo "Starting Index service --> Linked to Solr"
./indexsvc/linkedrun.sh
echo "Starting Blob Service"
./blobsvc/run.sh
echo "Starting Web Application --> Linked to Index and Blob Services"
./webapp/linkedrun.sh
echo "Starting Convert Service (PDF-to-text)"
./convertsvc/run.sh
echo "Starting Batch Service --> Linked to Index, Blob and Convert Services"
./batchsvc/linkedrun.sh
