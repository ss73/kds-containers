#!/bin/sh
cd $(dirname "$0")
echo "Building Solr"
./solr/build.sh
echo "Building Index service"
./indexsvc/build.sh
echo "Building Blob Service"
./blobsvc/build.sh
echo "Building Web Application"
./webapp/build.sh
echo "Building Convert Service"
./convertsvc/build.sh
echo "Building Batch Service"
./batchsvc/build.sh
