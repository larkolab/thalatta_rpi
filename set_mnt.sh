#!/bin/bash

sudo mkdir /mnt/GW1
sudo mkdir /mnt/GW2
sudo mkdir /mnt/GW3
sudo mkdir /mnt/GW4

sudo umount /mnt/GW1
sudo mount /dev/sda /mnt/GW1/
sudo umount /mnt/GW2
sudo mount /dev/sdb /mnt/GW2/
sudo umount /mnt/GW3
sudo mount /dev/sdc /mnt/GW3/
sudo umount /mnt/GW4
sudo mount /dev/sdd /mnt/GW4/
