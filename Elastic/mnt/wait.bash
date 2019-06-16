#!/bin/bash

status_code=0
i=1
while [ $status_code -ne 200 ]
do
    sleep 2s
    status_code=`curl  http://elasticsearch:9200 -iLs -o /dec/null  -w '%{http_code}\n'`
done