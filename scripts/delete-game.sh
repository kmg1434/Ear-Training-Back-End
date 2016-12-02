API="http://localhost:4741"
URL_PATH="/games/2"
TOKEN="BAhJIiUyNWRhOTE4MzA2MmRhYjQ2YTNiNzk0ZWI1OGNkMDIwZgY6BkVG--24638deaf5e0325b7d926b3ecc85d42e9d05fd54"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
