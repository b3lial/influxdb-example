#!/bin/bash

temp="$((20 + $RANDOM % 6))"
hum="$((40 + $RANDOM % 11))"
echo writing into temp==$temp and hum==$hum into db

curl --request POST \
"http://localhost:8086/api/v2/write?org=phobosys&bucket=cloudsensor&precision=ns" \
  --header "Authorization: Token e3RStgZQbd9dbSiAQsWVJRxuxF6k-G7LUHMWc4KeT7iHh3-_W36-bJRWa4hBBBe8TBtBGxDCwPkg2b6DCO9asg==" \
  --header "Content-Type: text/plain; charset=utf-8" \
  --header "Accept: application/json" \
  --data-binary "
    buero temperature=$temp,humidity=$hum
    "
