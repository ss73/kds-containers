#!/bin/sh
cd $(dirname "$0")
echo "\n\n\n############################################\n#"
echo "#   Building Solr"
echo "#\n############################################\n"
./solr/build.sh
echo "\n\n\n############################################\n#"
echo "#  Building Index Service"
echo "#\n############################################\n"
./indexsvc/build.sh
echo "\n\n\n############################################\n#"
echo "#  Building Blob Service"
echo "#\n############################################\n"
./blobsvc/build.sh
echo "\n\n\n############################################\n#"
echo "#  Building Web Application"
echo "#\n############################################\n"
./webapp/build.sh
echo "\n\n\n############################################\n#"
echo "#  Buildning Convert Service"
echo "#\n############################################\n"
./convertsvc/build.sh
echo "\n\n\n############################################\n#"
echo "#  Buildning Batch Service"
echo "#\n############################################\n"
./batchsvc/build.sh
