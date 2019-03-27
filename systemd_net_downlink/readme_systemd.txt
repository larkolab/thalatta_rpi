1) Create a new systemd service
	a. Update the net_downlink.service file with proper paths
	b. Copy the net_downlink.service to /etc/system/system
	c. Enable the service for autostart with
		sudo systemctl daemon-reload
		sudo systemctl enable net_downlink.service
		sudo reboot
	d. The following commands to disable the service, manually start/stop it:
		sudo systemctl disable net_downlink.service
		sudo systemctl start net_downlink.service
		sudo systemctl stop net_downlink.service

2) Configure rsyslog to redirect the packet forwarder logs into a dedicated file
	a. Copy the net_downlink.conf file into /etc/rsyslog.d
	b. Restart rsyslog:
		sudo systemctl restart rsyslog
	c. The logs can be seen with:
		sudo journalctl -u net_downlink -f
		or
		cat /var/log/net_downlink.log
