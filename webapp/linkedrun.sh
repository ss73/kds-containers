#!/bin/sh
docker run -d --name webapp --link indexsvc --link blobsvc -p 32000:32000 -v ~/slask/KDS/webapp/:/opt/webapp es_webapp:1.0 
