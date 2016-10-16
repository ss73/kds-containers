docker run -d --name indexsvc --link solr -p 32600:32600 index_svc:1.0
docker run -d --name blobsvc -p 32500:32500 blob_svc:1.0
docker run -d --name convsvc -p 32400:32400 convert_svc:1.0
docker run -d --name webapp --link indexsvc --link blobsvc -p 32000:32000 es_webapp:1.0
docker run -d --name batchsvc --link indexsvc --link blobsvc --link webapp --link convsvc -p 32700:32700  batch_svc:1.0
