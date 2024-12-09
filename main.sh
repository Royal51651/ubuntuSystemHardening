#!/bin/bash
echo "Ubuntu System Hardening Script For Cyber Patriot Because Yay :)"
sleep 2
# installs 
sudo apt install clamav
sudo apt install ufw
sudo apt install locate
sudo apt-get install auditd
sudo apt-get install bum in
# firewall config
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
# anti-malware
clamscan
# permissions
sudo chmod 644 /etc/passwd
sudo chmod 600 /etc/shadow
# pam files and lightdm.conf (pam files cause a lot of errors so we not doing those)
# sudo chmod g-w common-auth
# sudo chmod o+w common-password
# sudo cp -f "common-password" "/etc/pam.d"
# sudo cp -f "common-auth" "/etc/pam.d"
echo "allow-guest=false" | sudo cat >> /etc/lightdm/lightdm.conf
# audits
sudo auditctl -e 1
# post instructions

echo "Change Firefox settings to be better"
echo "Make sure to update"
echo "locate *.mp3 and delete everything that shows up"
echo "use bum to start any services that may need to be started"
