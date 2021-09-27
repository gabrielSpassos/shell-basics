#!/bin/bash

AWS_ACCESS_KEY_ID='access_key'
AWS_SECRET_ACCESS_KEY='secret_key'

echo 'Access Key: ' $AWS_ACCESS_KEY_ID
echo 'Secret Key: ' $AWS_SECRET_ACCESS_KEY

jq '.key1 = "new-value1"' <<<"$jsonStr"
