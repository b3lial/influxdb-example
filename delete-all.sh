#!/bin/bash

curl --request POST "http://localhost:8086/api/v2/delete?org=phobosys&bucket=cloudsensor" \
  --header 'Authorization: Token e3RStgZQbd9dbSiAQsWVJRxuxF6k-G7LUHMWc4KeT7iHh3-_W36-bJRWa4hBBBe8TBtBGxDCwPkg2b6DCO9asg==' \
  --header 'Content-Type: application/json' \
  --data '{
    "start": "2019-03-01T00:00:00Z",
    "stop": "2023-11-14T00:00:00Z"
  }'
