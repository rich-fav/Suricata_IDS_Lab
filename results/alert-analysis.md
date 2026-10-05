# Alert Analysis

## Test 1 — ICMP Ping

**Traffic generated:**

```text
ping -c 4 <KALI_IP>
```

**Expected alert:**

```text
LAB ICMP Ping Detected
```

**Observed result:**

> Write what you observed.

**Evidence:**

> Insert screenshot filename.

**Interpretation:**

> Explain that Suricata inspected ICMP traffic and matched the custom ICMP rule.

---

## Test 2 — HTTP Traffic

**Traffic generated:**

```text
curl http://<KALI_IP>/
```

**Expected alert:**

```text
LAB HTTP Traffic Detected
```

**Observed result:**

> Write what you observed.

**Evidence:**

> Insert screenshot filename.

**Interpretation:**

> Explain how the HTTP request matched the TCP destination-port 80 rule.

---

## Test 3 — TCP SYN Scan

**Traffic generated:**

```text
nmap -sS -p 20-100 <KALI_IP>
```

**Expected alert:**

```text
LAB Possible TCP SYN Port Scan
```

**Observed result:**

> Write what you observed.

**Evidence:**

> Insert screenshot filename.

**Interpretation:**

> Explain how repeated TCP SYN packets caused the threshold-based rule to alert.

---

# Detection Summary

| Test | Traffic | Rule SID | Alert Observed? | Evidence |
|---|---|---:|---|---|
| ICMP | Ping | 1000001 | `<YES/NO>` | `<FILE>` |
| HTTP | curl | 1000002 | `<YES/NO>` | `<FILE>` |
| TCP Scan | Nmap SYN scan | 1000003 | `<YES/NO>` | `<FILE>` |
