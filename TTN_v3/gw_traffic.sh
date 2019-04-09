#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Missing gatewau-id argument"
	ttn-lw-cli -c ism2400-demo.yml gateway list
	exit
fi

ttn-lw-cli -c ism2400-demo.yml events subscribe --gateway-id $1
