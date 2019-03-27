echo $(date) + "reset USB ports" >> /home/pi/thalatta_rpi/sys_logs/resetUSB.txt
sudo ./uhubctl/uhubctl -a cycle -p 2 -l 1-1
