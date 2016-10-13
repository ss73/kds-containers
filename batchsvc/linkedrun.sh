#!/bin/sh
docker run -d --name batchsvc --link indexsvc --link blobsvc --link webapp --link convsvc -p 32700:32700 -v ~/slask/KDS/microservices/batchService/:/opt/batch-service batch_svc:1.0 
