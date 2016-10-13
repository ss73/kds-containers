#!/bin/sh
cd $(dirname "$0")
docker build -t blob_svc:1.0 .

