#! /bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "usage:"
    echo "./change_body.sh <name>"
    exit
fi

sed -i -e 's/\(<h1>\).*\(<\/h1>\)/<h1>Welcome to '$1'<\/h1>/g' index.html
docker build . -t apache:v1 && docker run -dit -p 1234:80 apache:v1
