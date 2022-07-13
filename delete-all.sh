#!/bin/bash

curl --request POST "http://localhost:8086/api/v2/delete?org=phobosys&bucket=cloudsensor" \
  --header "Authorization: Token $1" \
  --header "Content-Type: application/json" \
  --data "{
    \"start\": \"2019-03-01T00:00:00Z\",
    \"stop\": \"2023-11-14T00:00:00Z\"
  }"
