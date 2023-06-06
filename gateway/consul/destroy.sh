#!/bin/bash

rm -rf server2 server3 client1
rm -rf server1/config server1/data/* server1/logs
cp -R server1 server2
cp -R server1 server3
cp -R server1 client1

