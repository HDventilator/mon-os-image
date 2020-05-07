#!/bin/bash

# create database for hdvent services
# we don't know if the influx service is already started, just retry a couple times
for i in 1 2 3 4 5; do
	influx -execute 'create database hdvent'
	if [ "$?" == "0" ]; then
		# add retention policy
		influx -execute 'CREATE RETENTION POLICY hdventpolicy ON hdvent DURATION 1h REPLICATION 1 DEFAULT'
		break
	fi
	# retry
	sleep 10
done
