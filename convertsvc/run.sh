#!/bin/sh
SRC_ROOT=$HOME/slask/KDS
docker run -d --name convsvc -p 32400:32400 -v $SRC_ROOT/microservices/convertService/:/opt/convert_service convert_svc:1.0 
