# Dependencies

* uhubctl: to control power on USB ports (reset GWs)
https://github.com/mvp/uhubctl.git

# Cron setup

0 */2 * * * /usr/bin/sudo -H /home/pi/2.4GHz/check_internet.sh >> /dev/null 2>&1 <br/>
0 */6 * * * /usr/bin/sudo -H /home/pi/2.4GHz/resetUSB.sh >> /dev/null 2>&1

