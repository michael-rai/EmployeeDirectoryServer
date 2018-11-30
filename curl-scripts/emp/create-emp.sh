curl "http://localhost:4741/employees" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "employee": {
      "name": "'"${NAME}"'",
      "email": "'"${EMAIL}"'",
      "dept": "'"${DEPT}"'",
      "active": "'"${true}"'",
      "company": "'"${COMPANY}"'"
    }
  }'
