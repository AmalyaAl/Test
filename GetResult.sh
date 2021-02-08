#! /bin/sh
curl GET http://3.13.86.142:3000/contacts > GetResult.txt
if grep -q bobolik GetResult.txt; then
    echo found
else
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"firstName":"bobolik","lastName":"xyz","email":"ggg@ggg.ru"}' \
  http://3.13.86.142:3000/contacts
fi
