#!/bin/sh
cd $(dirname "$0")
docker build -t batch_svc:1.0 .

