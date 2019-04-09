#!/bin/bash

if [ "$1" == "filter" ]
then
	ttn-lw-cli -c ism2400-demo.yml events subscribe --application-id thalatta-app | grep "gateway_id\|rssi\|device_id\|snr"
else
	ttn-lw-cli -c ism2400-demo.yml events subscribe --application-id thalatta-app
fi

