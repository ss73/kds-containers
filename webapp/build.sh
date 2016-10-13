#!/bin/sh
cd $(dirname "$0")
docker build -t es_webapp:1.0 .

