# Troubleshooting Log

Document problems and solutions here.

## Issue 1

**Problem:**

> Describe the issue.

**Command/output:**

```text
Paste sanitized output here.
```

**Solution:**

> Describe how you fixed it.

## Issue 2

**Problem:**

> Describe the issue.

**Solution:**

> Describe the solution.

## Useful Checks

```bash
sudo suricata -T -c /etc/suricata/suricata.yaml
sudo systemctl status suricata
sudo journalctl -u suricata --no-pager -n 50
sudo tail -n 50 /var/log/suricata/suricata.log
```
