#!/bin/bash
set -e

echo "[+] Suricata version"
suricata -V

echo
echo "[+] Testing Suricata configuration"
sudo suricata -T -c /etc/suricata/suricata.yaml

echo
echo "[+] Configuration test completed."
