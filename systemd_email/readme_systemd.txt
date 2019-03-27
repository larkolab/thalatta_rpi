1) Create a new systemd service
	a. Update the thalatta_email.service file with proper paths
	b. Copy the thalatta_email.service to /etc/system/system
	c. Enable the service for autostart with
		sudo systemctl daemon-reload
		sudo systemctl enable thalatta_email.service
		sudo reboot
	d. The following commands to disable the service, manually start/stop it:
		sudo systemctl disable thalatta_email.service
		sudo systemctl start thalatta_email.service
		sudo systemctl stop thalatta_email.service

2) Configure rsyslog to redirect the packet forwarder logs into a dedicated file
	a. Copy the thalatta_email.conf file into /etc/rsyslog.d
	b. Restart rsyslog:
		sudo systemctl restart rsyslog
	c. The logs can be seen with:
		sudo journalctl -u thalatta_email -f
		or
		cat /var/log/thalatta_email.log
