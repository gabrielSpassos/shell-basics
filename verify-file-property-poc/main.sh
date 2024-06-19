#!/bin/bash

echo "Verify property POC"

VERIFY_ENV=dev
FILE="conf/app.properties"

if [ $# -gt 0 ]; then
  VERIFY_ENV=$1
fi

echo "Env to search $VERIFY_ENV on file $FILE"

while IFS='=' read -r key value
do
    key=$(echo $key | tr '.' '_')
    eval ${key}=\${value}
done < "$FILE"

echo "env: ${app_env}"

if [ $VERIFY_ENV = ${app_env} ]; then
    echo "Current env: ${app_env} == $VERIFY_ENV"
else
    echo "Current env: ${app_env} != $VERIFY_ENV"
fi
