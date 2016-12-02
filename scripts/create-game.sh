#!/bin/bash

# not working!!!! 404 Not Found error

API="http://localhost:4741"
URL_PATH="/games"
TOKEN="BAhJIiU3NGZmMzBhNTgyOTYzYmE2MjMwOGNjZGIzN2U3MWEzNgY6BkVG--22e12cff6005b394da18495004dc774380c817df"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game":{
      "lvl":2,
      "score":null
    }
  }'

echo
