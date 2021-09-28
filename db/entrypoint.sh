#!/usr/bin/env bash
#mkdir -p "/data/n1"
#mkdir -p "/data/n2"
#mkdir -p "/data/n3"
#mkdir -p "/logs/n1"
#mkdir -p "/logs/n2"
#mkdir -p "/logs/n3"
#echo "127.0.0.1   mongodb-test" >> /etc/hosts
#
#echo "STARTING CLUSTER"
#mongod --bind_ip_all --replSet rs0 --dbpath /data/n1 --logpath /logs/n1.log --port 27017 --smallfiles --oplogSize 128 --fork
#mongod --bind_ip_all --replSet rs0 --dbpath /data/n2 --logpath /logs/n2.log --port 27018 --smallfiles --oplogSize 128 --fork
#mongod --bind_ip_all --replSet rs0 --dbpath /data/n3 --logpath /logs/n3.log --port 27019 --smallfiles --oplogSize 128 --fork
#
#echo "---------- RS INITIATE -------------------"
#mongo --port 27017 --eval 'rs.initiate({_id : "rs0", members: [ { _id: 0, host: "mongodb-test:27017"}]});'
#mongo --port 27017 --eval 'rs.add("mongodb-test:27018")'
#mongo --port 27017 --eval 'rs.add("mongodb-test:27019")'
#mongo --port 27017 --eval 'db.isMaster().primary'
#mongo --port 27017 --eval 'rs.secondaryOk()'

echo "---------- EVALUATING INIT SCRIPT -------------------"
mongo --port 27017 --eval "$(cat /docker-entrypoint-initdb.d/init.js)"

echo "---------- DATABASE READY -------------------"
#tail -n +0 -f /logs/*.log
