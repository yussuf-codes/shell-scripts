curl -X GET -s http://localhost:8000/api/users/ | jq

curl -X GET -s http://localhost:8000/api/users/1/ | jq

curl -X POST -H 'Content-Type: application/json' -d @input.json -s http://localhost:8000/api/users/ | jq
