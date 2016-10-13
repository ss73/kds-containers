#!/bin/sh
cd $(dirname "$0")
echo "Starting Solr"
./solr/prodrun.sh
echo "Starting Index service --> Linked to Solr"
./indexsvc/prodrun.sh
echo "Starting Blob Service"
./blobsvc/prodrun.sh
echo "Starting Web Application --> Linked to Index and Blob Services"
./webapp/prodrun.sh
echo "Starting Convert Service (PDF-to-text)"
./convertsvc/prodrun.sh
echo "Starting Batch Service --> Linked to Index, Blob and Convert Services"
./batchsvc/prodrun.sh
