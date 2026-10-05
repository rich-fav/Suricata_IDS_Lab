# Detection Tests

Perform the tests in this order.

## Test 1 — ICMP

From Ubuntu:

```bash
ping -c 4 <KALI_IP>
```

On Kali:

```bash
sudo tail -f /var/log/suricata/fast.log
```

Expected custom alert:

```text
LAB ICMP Ping Detected
```

## Test 2 — HTTP

On Kali, start a simple authorized lab web server:

```bash
python3 -m http.server 80 --bind 0.0.0.0
```

From Ubuntu:

```bash
curl http://<KALI_IP>/
```

Expected custom alert:

```text
LAB HTTP Traffic Detected
```

If port 80 requires elevated privileges on your system, use an appropriate authorized lab setup or another permitted port and adjust the rule accordingly.

## Test 3 — TCP SYN Scan

Only scan your own Kali VM.

From Ubuntu, if Nmap is installed:

```bash
nmap -sS -p 20-100 <KALI_IP>
```

Expected custom alert:

```text
LAB Possible TCP SYN Port Scan
```

The rule uses a threshold so that repeated SYN packets from one source within a short interval can trigger the alert.

## Log Review

```bash
sudo grep "LAB " /var/log/suricata/fast.log
```

For structured JSON:

```bash
sudo jq 'select(.event_type=="alert") | {timestamp,src_ip,dest_ip,signature:.alert.signature,sid:.alert.signature_id}' /var/log/suricata/eve.json
```
