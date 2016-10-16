#!/bin/sh
docker run -d --name solr es_solr:1.0
docker run -d --name indexsvc --link solr index_svc:1.0
docker run -d --name blobsvc blob_svc:1.0
docker run -d --name convsvc convert_svc:1.0
docker run -d --name webapp --link indexsvc --link blobsvc -p 8080:32000 es_webapp:1.0
docker run -d --name batchsvc --link indexsvc --link blobsvc --link webapp --link convsvc batch_svc:1.0
