#!/bin/sh
docker run -d --name batchsvc --link indexsvc --link blobsvc --link webapp --link convsvc batch_svc:1.0 
