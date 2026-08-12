
sudo airmon-ng start wlan0
sudo iwconfig wlan0mon
sudo ifconfig wlan0mon down
sudo macchanger -r wlan0mon
sudo ifconfig wlan0mon up
sudo a2enmod rewrite
sudo service apache2 start
sudo ifconfig wlan0mon up 172.20.20.1 netmask 255.255.255.0
ifconfig wlan0mon
#sudo ifconfig wlan0mon up 10.0.0.1 netmask 255.255.255.0
sudo route add -net 172.20.20.0 netmask 255.255.255.0 gw 172.20.20.1
#sudo route add -net 10.0.0.0 netmask 255.255.255.0 gw 10.0.0.1
sudo ./iptablesRules.sh
sudo hostapd hostapq.conf
sudo dnsmasq -C dnsmasq.conf -d

#6A:19:F8:0F:29:3A

