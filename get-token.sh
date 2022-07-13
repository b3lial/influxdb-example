#!/bin/bash

token=`docker exec influxdb2 influx auth list --json | jq -r '.[0].token'`
echo $token
