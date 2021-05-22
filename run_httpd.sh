#! /bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "usage:"
    echo "./run_httpd.sh <name>"
    exit
fi

sed -i -e 's/\(<h1>\).*\(<\/h1>\)/<h1>Welcome to '$1'<\/h1>/g' index.html
docker build . -t apache:v1 && docker run -dit -p 8081:80 apache:v1
