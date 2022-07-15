#!/bin/bash

if [ ! -d data ]; then
  mkdir -p data;
fi

if [ ! -d config ]; then
  mkdir -p config;
fi

docker run -d -p 8086:8086 \
      --name influxdb2 \
      -v $PWD/data:/var/lib/influxdb2 \
      -v $PWD/config:/etc/influxdb2 \
      -e DOCKER_INFLUXDB_INIT_MODE=setup \
      -e DOCKER_INFLUXDB_INIT_USERNAME=$1 \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=$2 \
      -e DOCKER_INFLUXDB_INIT_ORG=$3 \
      -e DOCKER_INFLUXDB_INIT_BUCKET=$4 \
      influxdb:latest
