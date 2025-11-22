# Week 3 – Bash Scripting Challenges

## Overview
This week focuses on Bash scripting for Linux automation.  
You’ll build two real-world scripts — one for **user management** and another for **automated backups with rotation**.

---

## Challenge 1: User Account Management

### Description
A script that allows you to manage user accounts from the command line using options.

### Features
- Create new users with passwords  
- Delete existing users  
- Reset user passwords  
- List all system users  
- Display usage/help menu  

### Usage
```bash
./user_management.sh [option]

---
### Options

| Option | Description |
|---------|--------------|
| `-c`, `--create` | Create a new user |
| `-d`, `--delete` | Delete an existing user |
| `-r`, `--reset`  | Reset user password |
| `-l`, `--list`   | List all users |
| `-h`, `--help`   | Show help information |

---

### Example Usage

```bash
./user_management.sh --create
./user_management.sh --list



---

## Challenge 2: Automated Backup with Rotation

###Description

A script that performs timestamped backups of a given directory and automatically removes older backups (keeping only the last 3).

###Usage
./backup_with_rotation.sh /path/to/directory

###Features

- Creates timestamped backups inside the target directory
- Retains only the latest 3 backups
- Removes older backups automatically
- Easily schedulable via cron

##Example

```bash
 ./backup_with_rotation.sh /home/user/documents


###Output

 Backup created: /home/user/documents/backup_2025-11-09_12-45-23
 Oldest backup removed: /home/user/documents/backup_2025-10-30_09-15-10


####Learning Outcomes

✅ Improved Bash scripting skills
✅ Automated real-world system administration tasks
✅ Gained hands-on experience with Linux user management & cron-based backups


---

###Optional Cron Setup (for automation)

crontab -e
# Add this line:
0 2 * * * /path/to/backup_with_rotation.sh /home/user/documents >> /var/log/backup.log 2>&1

