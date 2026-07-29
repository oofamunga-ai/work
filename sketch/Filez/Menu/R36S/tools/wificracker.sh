#!/bin/bash


echo "cracking ..."

hcxpcapngtool -o Wi-Fi_pmkid_hash_22000_file.txt Wi-Fi_PMKID.pcapng
sudo hashcat -a 3 -w4 -m 22000 Wi-Fi_pmkid_hash_22000_file.txt 05?d?d?d?d?d?d?d?d -o pmkid_cracked.txt
