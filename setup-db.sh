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
      -e DOCKER_INFLUXDB_INIT_USERNAME=christian \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=geheimespasswort \
      -e DOCKER_INFLUXDB_INIT_ORG=phobosys \
      -e DOCKER_INFLUXDB_INIT_BUCKET=cloudsensor \
      influxdb:latest
