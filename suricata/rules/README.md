# Custom Suricata Rules

The lab uses three custom detections.

Copy `local.rules` to Kali:

```bash
sudo mkdir -p /etc/suricata/rules
sudo cp local.rules /etc/suricata/rules/local.rules
```

Then ensure `/etc/suricata/suricata.yaml` loads the file.

Example:

```yaml
rule-files:
  - suricata.rules
  - /etc/suricata/rules/local.rules
```

Validate:

```bash
sudo suricata -T -c /etc/suricata/suricata.yaml
```

## Rule IDs

- `1000001` — ICMP test
- `1000002` — HTTP test
- `1000003` — TCP SYN scan test

The SIDs are lab-specific and should not be confused with official/community rule IDs.
