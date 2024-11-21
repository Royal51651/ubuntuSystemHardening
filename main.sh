#!/bin/bash
echo "This Does Some Stuff Lo-Key"
sleep 5
# installs 
sudo apt install clamav
sudo apt install ufw
sudo apt install locate
# firewall config
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
# anti-malware
clamscan
# permissions
sudo chmod 644 /etc/passwd
sudo chmod 600 /etc/shadow
# pam files (this causes the system to be bricked for some reason. Only use if your sure this will work
# cp -f "common-password" "/etc/pam.d"
# cp -f "common-auth" "/etc/pam.d"
# cp -f "login.defs" "/etc"
# post instructions
echo "Change Firefox settings to be better"
echo "Make sure to update"
echo "locate *.mp3 and delete everything that shows up"
