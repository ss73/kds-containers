#!/bin/sh
cd $(dirname "$0")
<<<<<<< HEAD
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
=======
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
>>>>>>> 5bbe681f4730e939e892c644719449e8b620dcd7
./batchsvc/build.sh
