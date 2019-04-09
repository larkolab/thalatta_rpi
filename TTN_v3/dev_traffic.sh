#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Missing gatewau-id argument"
	ttn-lw-cli -c ism2400-demo.yml end-devices list thalatta-app
	exit
fi

ttn-lw-cli -c ism2400-demo.yml events subscribe --application-id thalatta-app --device-id $1
