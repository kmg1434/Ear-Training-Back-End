#!/bin/bash

API="http://localhost:4741"
URL_PATH="/users"
ID="1"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
