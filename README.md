1.Register

method:POST
url:http://127.0.0.1:8000/api/register
authorization: bearer token
headers:  Accept:application/json
          Content-Type:application/json

Request
{
    "name": "Hanna Joseph",
    "email": "hanna@example.com",
    "password": "hanna123!"
}

Responses

{
    "message": "User registered successfully",
    "user": {
        "name": "Hanna Joseph",
        "email": "hanna@example.com",
        "password": "$2y$12$7SgfGaPUz8eX7R1wHpqoa./GqQVCHJXCDsvUQ1YAAADL7REV3PbLG",
        "updated_at": "2025-07-06T15:56:29.000000Z",
        "created_at": "2025-07-06T15:56:29.000000Z",
        "id": 5
    },
    "access_token": "9|e8mjUtrVUH5com4lAApGIiYAFvuX4PLiU6uEjmqid53e6cf9",
    "token_type": "Bearer"
}



2. Login

method:POST
url:http://127.0.0.1:8000/api/login
authorization: bearer token
headers:  Accept:application/json
          Content-Type:application/json

request

{
  "email": "hanna@example.com",
  "password": "hanna123!"
}

responses

{
    "message": "Welcome",
    "user": {
        "id": 5,
        "name": "Hanna Joseph",
        "email": "hanna@example.com",
        "password": "$2y$12$7SgfGaPUz8eX7R1wHpqoa./GqQVCHJXCDsvUQ1YAAADL7REV3PbLG",
        "created_at": "2025-07-06T15:56:29.000000Z",
        "updated_at": "2025-07-06T15:56:29.000000Z"
    },
    "token": "10|djgizA6U8JT4xfzwutrPW8bbbUxUL4CEDMKLnNk8cbf34a4f"
}




          


Logout 
method:POST
url: http://127.0.0.1:8000/api/logout
authorization: bearer token
headers:  Accept:application/json
          Content-Type:application/json

