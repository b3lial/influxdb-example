#!/bin/bash

temp="$((20 + $RANDOM % 6))"
hum="$((40 + $RANDOM % 11))"
echo writing tuple temp==$temp and hum==$hum into db

curl --request POST \
"http://localhost:8086/api/v2/write?org=phobosys&bucket=cloudsensor&precision=ns" \
  --header "Authorization: Token O76lfizLy8f6DDeDZhRSIK4C49kYhKJtlbdgtOBPtQzTuuZmQ2kla7RKXLEhJ5GkFMLAD6C9GL2uaAbZF6vr8w==" \
  --header "Content-Type: text/plain; charset=utf-8" \
  --header "Accept: application/json" \
  --data-binary "
    buero temperature=$temp,humidity=$hum
    "
