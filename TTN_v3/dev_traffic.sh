#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Missing device-id argument"
	ttn-lw-cli -c ism2400-demo.yml end-devices list thalatta-app
	exit
fi

if [ "$2" == "filter" ]
then
	ttn-lw-cli -c ism2400-demo.yml events subscribe --application-id thalatta-app --device-id $1 | grep "gateway_id\|rssi\|device_id\|snr"
else
	ttn-lw-cli -c ism2400-demo.yml events subscribe --application-id thalatta-app --device-id $1
fi
