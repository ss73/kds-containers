#!/bin/sh
docker run -d --name blobsvc -p 32500:32500 -v ~/slask/KDS/microservices/blobService/:/opt/blob_service blob_svc:1.0 
