# GitHub Workflow

Run these commands from Git Bash after completing the lab.

## 1. Initialize the repository

```bash
cd /path/to/Suricata_IDS_Detection_Lab
git init
git add .
git status
git commit -m "Initial Suricata IDS detection lab"
```

## 2. Create the GitHub repository

Create an empty repository on GitHub named something like:

```text
suricata-ids-detection-lab
```

Do not create another README if this local repository already has one.

## 3. Connect the local repository

Replace the URL with your own GitHub repository URL:

```bash
git branch -M main
git remote add origin <YOUR_GITHUB_REPOSITORY_URL>
git push -u origin main
```

## 4. After making changes

```bash
git status
git add .
git commit -m "Document Suricata detection tests"
git push
```

## Suggested Commit Sequence

```text
Initial Suricata IDS lab structure
Add Suricata custom detection rules
Document ICMP detection test
Document HTTP detection test
Document TCP SYN scan detection
Add evidence and alert analysis
Add troubleshooting notes
```
