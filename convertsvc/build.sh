#!/bin/sh
cd $(dirname "$0")
docker build -t convert_svc:1.0 .

