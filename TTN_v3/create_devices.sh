#!/bin/bash

for node_num in {1..20}
do
	echo creating boat$node_num
	#echo creating boat$(printf %02d $node_num)
	if [ 1 -eq 1 ]; then
		ttn-lw-cli -c ism2400-demo.yml end-devices create thalatta-app boat$node_num \
			--frequency-plan-id ISM_2400 \
			--lorawan-version 1.0.3 \
			--lorawan-phy-version 1.0.3-a \
			--abp \
			--session.dev-addr 260118$(printf %02d $node_num) \
			--session.keys.app-s-key.key 11222222222222222222222222222222 \
			--session.keys.nwk-s-key.key 22331111111111111111111111111111 \
			--mac-settings.rx1-delay=RX_DELAY_5
		ttn-lw-cli -c ism2400-demo.yml dev set thalatta-app boat$node_num --mac-settings.resets-f-cnt=true
	fi
done

echo DONE 
ttn-lw-cli -c ism2400-demo.yml end-devices list thalatta-app
