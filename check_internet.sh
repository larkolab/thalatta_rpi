# Ping google DNS servers
#  if no answer, restart the network
ping -q -c 2 -I eth0 8.8.8.8
if [ $? -ne 0 ] 
then
  echo $(date) + "No internet, rebooting..." >> /home/pi/2.4GHz/sys_logs/check_ip.txt 
  /sbin/shutdown -r now
else 
  echo $(date) + "DHCP already activated" >> /home/pi/2.4GHz/sys_logs/check_ip.txt 
fi
