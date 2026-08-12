#!/bin/bash
# Prompt for SSID and Passphrase
read -p "Enter SSID: " ssid
read -p "Enter Passphrase: " passphrase
read -p "Wireless Interface: " interface


#Step 1: Set up wireless interface and set subnet.
ip addr add 192.168.10.1/24 dev $interface
ip link set "$interface" up


# Step 2: Configure Network Interface
echo "Configuring network interface..."
cat <<EOF > /etc/network/interfaces
source-directory /etc/network/interfaces.d
auto lo
iface lo inet loopback
allow-hotplug wlan0
iface wlan0 inet static
address 192.168.10.1
netmask 255.255.255.0
EOF
systemctl enable networking
systemctl enable NetworkManager
systemctl start networking
systemctl start NetworkManager


# Step 3: Create WAP Configuration
apt install -y hostapd
echo "Creating hostapd configuration..."
bash -c "cat > /etc/hostapd/hostapd.conf <<EOF
interface=$interface
driver=nl80211
ssid=$ssid
hw_mode=g
channel=5
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=1
wpa=2
wpa_passphrase=$passphrase
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
EOF"
systemctl unmask hostapd
systemctl enable hostapd


# Step 4: Configure DNS and DHCP
echo "Configuring dnsmasq..."
cat <<EOF > /etc/dnsmasq.conf
interface=$interface
dhcp-range=192.168.10.50,192.168.10.150,12h
dhcp-option=3,192.168.10.1
dhcp-option=6,8.8.8.8,8.8.4.4
EOF
apt-get -y install dnsmasq
apt-get -y install dnsmasq-base
systemctl enable dnsmasq


# Step 5: Enable IPv4 Forwarding
echo "Enabling IPv4 forwarding..."
echo "net.ipv4.ip_forward=1" > /etc/sysctl.conf


# Step 6: Set NAT and Firewall Rules
echo "Setting up iptables rules..."
mkdir -p /etc/iptables
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o $interface -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i $interface -o eth0 -j ACCEPT
iptables-save > /etc/iptables/rules.v4


# Set DEBIAN_FRONTEND to noninteractive to auto-accept prompts
export DEBIAN_FRONTEND=noninteractive


# Install iptables-persistent without manual confirmation
apt-get install -y iptables-persistent


# Reset DEBIAN_FRONTEND to its default value
unset DEBIAN_FRONTEND


# Step 7: Enable netfilter-persistent and Reboot
echo "Enabling netfilter-persistent..."
systemctl enable netfilter-persistent


reboot 
