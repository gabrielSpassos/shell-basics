#!/bin/bash

file="app.properties"

while IFS='=' read -r key value
do
    key=$(echo $key | tr '.' '_')
    eval ${key}=\${value}
done < "$file"

echo "App Name (NAME) = " ${NAME}
echo "App Env  (ENV)  = " ${ENV}
echo "App Version  (VERSION)  = " ${VERSION}
echo "App Desc  (app.description)  = " ${app_description}