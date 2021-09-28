#!/bin/bash
FILE=gunicorn-gevent-only-mongo

echo "Running service"
docker-compose -f $FILE.yml up -d  --build

until curl -s -f http://127.0.0.1:3000/; do
  echo "Service unavailable"
done

echo
echo "Running benchmark"
ab -r -n 10000 -c 1000 http://127.0.0.1:3000/ >> results/$FILE.txt

echo
echo "Shutting down"
docker-compose -f $FILE.yml down

exit 0