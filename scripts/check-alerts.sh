#!/bin/bash

echo "[+] Recent custom Suricata alerts:"
sudo grep "LAB " /var/log/suricata/fast.log | tail -n 20

echo
echo "[+] Structured alert summary:"
sudo jq 'select(.event_type=="alert") | {timestamp,src_ip,dest_ip,signature:.alert.signature,sid:.alert.signature_id}' /var/log/suricata/eve.json | tail -n 20
