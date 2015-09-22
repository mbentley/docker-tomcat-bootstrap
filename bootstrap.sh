#!/bin/bash

# check to see if /app exists
if [ ! -d /app ]
then
  # create /app because it doesn't exist
  echo "creating directory /app"
  mkdir /app
else
  # do nothing if it already exists
  echo "/app already exists"
fi

# check to see if /app/WEB-INF exists
if [ ! -d /app/WEB-INF ]
then
  # copy WEB-INF recursively to /app because it doesn't exist
  echo "copy /tmp/WEB-INF to /app"
  cp -r /tmp/WEB-INF /app/
else
  # do nothing, WEB-INF exists
  echo "skipping WEB-INF copy"
fi

# show the contents of the /app/WEB-INF directory
ls -la /app/WEB-INF

# start the process listed as the 'CMD' in the Dockerfile
exec "$@"
