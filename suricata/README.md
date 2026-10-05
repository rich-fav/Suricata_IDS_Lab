# Suricata Configuration

This folder contains the configuration-related material used for the lab.

The actual system configuration is normally located at:

```text
/etc/suricata/suricata.yaml
```

Do not copy your entire system configuration into GitHub if it contains environment-specific information. Document only the relevant settings and sanitized excerpts.

## Configuration Checklist

- [ ] Confirm Suricata installation.
- [ ] Identify the Kali monitoring interface.
- [ ] Identify the Kali subnet.
- [ ] Configure `HOME_NET`.
- [ ] Configure the `af-packet` interface.
- [ ] Confirm `default-rule-path`.
- [ ] Add `local.rules` to `rule-files`.
- [ ] Run `suricata -T`.
- [ ] Restart Suricata.
- [ ] Confirm the service is running.
