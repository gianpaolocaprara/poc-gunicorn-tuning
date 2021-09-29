#!/bin/bash

for i in {0..20}; do
    echo "Iteration "$i
    ./run-gunicorn-gevent-postgres.sh
    ./run-gunicorn-gevent-patched-postgres.sh
done