#!/bin/sh
docker run -d --name webapp --link indexsvc --link blobsvc -p 80:32000 es_webapp:1.0 
