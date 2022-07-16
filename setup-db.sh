#!/bin/bash
set -e

docker volume create influx-data
docker volume create influx-config
docker run -d -p 8086:8086 \
      --name influxdb2 \
      -v influx-data:/var/lib/influxdb2 \
      -v influx-config:/etc/influxdb2 \
      -e DOCKER_INFLUXDB_INIT_MODE=setup \
      -e DOCKER_INFLUXDB_INIT_USERNAME=$1 \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=$2 \
      -e DOCKER_INFLUXDB_INIT_ORG=$3 \
      -e DOCKER_INFLUXDB_INIT_BUCKET=$4 \
      influxdb:latest

until [ "`docker inspect -f {{.State.Running}} influxdb2`"=="true" ]; do
    sleep 1;
done;