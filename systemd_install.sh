#!/bin/bash

echo "Installing systemd service for reboot emailing..."
sudo cp ./systemd_email/thalatta_email.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable thalatta_email.service
sudo systemctl start thalatta_email.service

echo "Installing rsyslog configuration for reboot emailing..."
sudo cp ./systemd_email/thalatta_email.conf /etc/rsyslog.d
sudo systemctl restart rsyslog

echo "Installing systemd service for net_downlink..."
sudo cp ./systemd_net_downlink/net_downlink.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable net_downlink.service
sudo systemctl start net_downlink.service

echo "Installing rsyslog configuration for net_downlink..."
sudo cp ./systemd_net_downlink/net_downlink.conf /etc/rsyslog.d
sudo systemctl restart rsyslog
