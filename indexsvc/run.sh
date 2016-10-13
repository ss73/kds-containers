#!/bin/sh
docker run -d --name indexsvc -p 32600:32600 -v ~/slask/KDS/microservices/indexService/:/opt/index_service index_svc:1.0 
