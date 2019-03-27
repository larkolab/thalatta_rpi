1) Create a new systemd service
	a. Update the lora_pkt_fwd.service file with proper paths
	b. Copy the lora_pkt_fwd.service to /etc/system/system
	c. Enable the service for autostart with
		sudo systemctl daemon-reload
		sudo systemctl enable lora_pkt_fwd.service
		sudo reboot
	d. The following commands to disable the service, manually start/stop it:
		sudo systemctl disable lora_pkt_fwd.service
		sudo systemctl start lora_pkt_fwd.service
		sudo systemctl stop lora_pkt_fwd.service

2) Configure rsyslog to redirect the packet forwarder logs into a dedicated file
	a. Copy the lora_pkt_fwd.conf file into /etc/rsyslog.d
	b. Restart rsyslog:
		sudo systemctl restart rsyslog
	c. The logs can be seen with:
		sudo journalctl -u lora_pkt_fwd –f
		or
		cat /var/log/lora_pkt_fwd.log
