#!/bin/bash

echo "READ SINGLE PROPERTY ON FILE POC"

KEY="NAME"
VALUE=$(cat app.properties | grep --color=never "^$KEY=" | cut -d '=' -f 2)
# cat app.properties            -> return the content of app.properties
# grep --color=never "^$KEY="   -> return the line with starting with the key name: NAME=SHELL-READ-SINGLE-PROPERTY-POC
# cut -d '=' -f 2               -> slices the output by the char '=' and gets the index 2 of the slice output: SHELL-READ-SINGLE-PROPERTY-POC

if [ -z "${VALUE}" ]
then
    echo "empty value"
else
    echo "valid value"
fi

echo "key name: $KEY, key value: $VALUE"