curl -u "adminapi:b9EtWP6Cm1Ezo9vOTgmoc7M0rBOig0bM" "http://localhost:9000/api/tx" -X POST \
     -H 'Content-Type: application/json; charset=utf-8' \
     --data-binary @- << EOF
    {
        "subscriber_email": "leandrovalido@gmail.com",
        "template_id": 3,
        "data": {"order_id": "1234", "shipping_date": "2022-07-30", "YourParamName":"pepe", "items": [1, 2, 3]},
        "content_type": "html"
    }
EOF

