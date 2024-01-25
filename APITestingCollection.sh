curl -X 'GET' -H 'accept: text/plain' -s http://localhost:8000/api/users/ | jq

curl -X 'GET' -H 'accept: text/plain' -s http://localhost:8000/api/users/1/ | jq

curl -X 'POST' -H 'Content-Type: application/json' -d @input.json -s http://localhost:8000/api/users/ | jq

curl -X 'PUT' -H 'Content-Type: application/json' -d @input.json -s http://localhost:8000/api/users/1

curl -X 'DELETE' -s http://localhost:8000/api/users/1/
