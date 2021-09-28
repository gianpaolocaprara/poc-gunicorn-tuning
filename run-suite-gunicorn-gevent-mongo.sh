#!/bin/bash

for i in {0..20}; do
    echo "Iteration "$i
    ./run-gunicorn-gevent-mongo.sh
    ./run-gunicorn-gevent-patched-mongo.sh
done