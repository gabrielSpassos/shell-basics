#!/bin/bash

PROFILE=dev
BASE_FOLDER=conf/inner
FILE=my.profile
FULL_FILE_NAME=$BASE_FOLDER/$FILE

if [ $# -gt 0 ]; then
  PROFILE=$1
fi

if [ -e $FULL_FILE_NAME ]
then
    echo "Updating $FULL_FILE_NAME to profile $PROFILE"
    sed -i '' 's/PROFILE=.*/PROFILE='$PROFILE'/' $FULL_FILE_NAME
    cat $FULL_FILE_NAME
else
    echo "Creating $FULL_FILE_NAME"
    mkdir -p $BASE_FOLDER && touch $FULL_FILE_NAME
    echo "PROFILE=$PROFILE" >> $FULL_FILE_NAME
    echo "IMMUTABLE=true" >> $FULL_FILE_NAME
    cat $FULL_FILE_NAME
fi