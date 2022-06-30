#!/bin/bash

docker exec influxdb2 influx auth list --json | grep token
