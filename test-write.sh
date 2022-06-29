#!/bin/bash

curl --request POST \
"http://localhost:8086/api/v2/write?org=phobosys&bucket=cloudsensor&precision=ns" \
  --header "Authorization: Token e3RStgZQbd9dbSiAQsWVJRxuxF6k-G7LUHMWc4KeT7iHh3-_W36-bJRWa4hBBBe8TBtBGxDCwPkg2b6DCO9asg==" \
  --header "Content-Type: text/plain; charset=utf-8" \
  --header "Accept: application/json" \
  --data-binary '
    airSensors,sensor_id=TLM0201 temperature=73.97038159354763,humidity=35.23103248356096 1630424257000000000
    airSensors,sensor_id=TLM0202 temperature=75.30007505999716,humidity=35.651929918691714 1630424257000000000
    '
