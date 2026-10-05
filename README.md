# Suricata IDS Detection Lab

## Project Overview

This lab demonstrates how to configure and test **Suricata as a Network Intrusion Detection System (IDS)** using Kali Linux and Ubuntu virtual machines.

The lab covers three custom detections:

1. ICMP Ping Detection
2. HTTP Traffic Detection
3. TCP SYN Port-Scan Detection

Traffic is generated from the Ubuntu VM toward the Kali VM, while Suricata runs on Kali and records alerts in `fast.log` and `eve.json`.

> **Lab safety:** Perform the traffic generation only against systems you own or are explicitly authorized to test.

## Lab Architecture

```text
Ubuntu VM
Traffic Generator
      |
      | ICMP / HTTP / TCP SYN traffic
      v
Kali Linux VM
Suricata IDS
      |
      +--> /var/log/suricata/fast.log
      |
      +--> /var/log/suricata/eve.json
```

## Objectives

- Install and verify Suricata.
- Identify the monitored network interface.
- Configure `suricata.yaml`.
- Create custom Suricata rules.
- Validate the configuration before starting Suricata.
- Generate controlled test traffic.
- Observe and interpret Suricata alerts.
- Capture evidence for each test.
- Document the work professionally in GitHub.

## Repository Workflow

1. Prepare the Kali and Ubuntu VMs.
2. Record IP addresses and interfaces.
3. Configure `/etc/suricata/suricata.yaml`.
4. Create `local.rules`.
5. Validate the Suricata configuration.
6. Start/restart Suricata.
7. Generate ICMP traffic from Ubuntu.
8. Generate HTTP traffic from Ubuntu.
9. Generate an authorized TCP SYN scan against Kali.
10. Review `fast.log` and `eve.json`.
11. Capture screenshots and complete the evidence log.
12. Commit and push the repository from Git Bash.

## Lab Environment

| Component | Role | IP Address |
|---|---|---|
| Kali Linux | Suricata IDS / Sensor | `<KALI_IP>` |
| Ubuntu | Traffic Generator | `<UBUNTU_IP>` |
| Virtualization | VirtualBox | `<NETWORK_MODE>` |

Replace the placeholders with your actual values.

## Suricata Files

- Configuration: `/etc/suricata/suricata.yaml`
- Custom rules: `/etc/suricata/rules/local.rules`
- Main ruleset: `/var/lib/suricata/rules/suricata.rules`
- Fast alerts: `/var/log/suricata/fast.log`
- Structured events: `/var/log/suricata/eve.json`

## Core Validation Commands

```bash
suricata -V
ip addr
ip route
sudo suricata -T -c /etc/suricata/suricata.yaml
sudo systemctl restart suricata
sudo systemctl status suricata
sudo tail -f /var/log/suricata/fast.log
sudo tail -f /var/log/suricata/eve.json | jq
```

## Custom Rules

The working rules are stored in:

```text
suricata/rules/local.rules
```

The rule file should be copied to:

```text
/etc/suricata/rules/local.rules
```

See `suricata/rules/README.md` for the exact workflow.

## Evidence

Screenshots and sanitized command output belong in:

```text
evidence/
```

Do **not** commit passwords, private keys, API tokens, personal data, or unnecessary host/network information.

## Results

Complete `results/alert-analysis.md` after performing the tests.

## Skills Demonstrated

- Linux administration
- Network interface identification
- YAML configuration
- IDS deployment
- Suricata rule writing
- Network traffic analysis
- Alert validation
- JSON log analysis
- Incident/detection documentation
- Git and GitHub workflow
