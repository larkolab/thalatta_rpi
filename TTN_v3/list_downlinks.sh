#!/bin/bash

for node_num in {1..22}
do
	echo "---- boat$node_num ----"
	ttn-lw-cli -c ism2400-demo.yml end-devices downlink list thalatta-app boat$node_num
done
