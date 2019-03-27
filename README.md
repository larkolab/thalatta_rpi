# Dependencies

* uhubctl: to control power on USB ports (reset GWs) <br/>
https://github.com/mvp/uhubctl.git

# Cron setup

0 */2 * * * /usr/bin/sudo -H /home/pi/thalatta_rpi/check_internet.sh >> /dev/null 2>&1

0 */6 * * * /usr/bin/sudo -H /home/pi/thalatta_rpi/resetUSB.sh >> /dev/null 2>&1

