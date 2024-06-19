#!/bin/bash

echo "Start inner script"

VERIFY_ENV=dev
FILE="conf/app.properties"

if [ $# -gt 0 ]; then
  VERIFY_ENV=$1
fi

echo "Searching on $FILE, if is using with env: $VERIFY_ENV"

while IFS='=' read -r key value
do
    key=$(echo $key | tr '.' '_')
    eval ${key}=\${value}
done < "$FILE"

if [ $VERIFY_ENV = ${app_env} ]; then
    echo "Current env: ${app_env} == $VERIFY_ENV"
    echo "APP.ENV=$app_env" >> logs.txt
else
    echo "Current env: ${app_env} != $VERIFY_ENV"
    return 1 2>/dev/null
    exit 1
fi

echo "Finished inner script"
