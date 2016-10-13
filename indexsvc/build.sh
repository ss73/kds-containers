#!/bin/sh
cd $(dirname "$0")
docker build -t index_svc:1.0 .

