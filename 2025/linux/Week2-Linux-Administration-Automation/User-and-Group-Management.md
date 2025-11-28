# User and Group Management

## Overview
User and group management is a core part of Linux system administration.  
It helps define access levels, control privileges, and maintain system security.  
Every user and group in Linux is stored in dedicated configuration files and can be managed using command-line utilities.

---

## Key Concepts
- Users are listed in `/etc/passwd` and groups in `/etc/group`.
- Each user has a unique **UID** and belongs to one or more groups.
- **Sudo privileges** grant administrative permissions.
- **SSH access** can be restricted to specific users for better security.

---

## Commands Practiced

| Command | Description |
|----------|-------------|
| `useradd -m devops_user` | Creates a new user with a home directory |
| `passwd devops_user` | Sets a password for the new user |
| `groupadd devops_team` | Creates a new group |
| `usermod -aG devops_team devops_user` | Adds a user to an existing group |
| `visudo` | Safely edits the sudoers file to grant admin privileges |
| `vim /etc/ssh/sshd_config` | Configures SSH access (AllowUsers, DenyUsers) |

---

## Notes
- **Principle of Least Privilege:** Only give sudo rights where needed.  
- Restart SSH service after changes: `sudo systemctl restart sshd`.  
- Combine user and group management with file permissions for stronger access control.

---

## Reflection
- Learned to create, manage, and secure users and groups.  
- Practiced granting and restricting administrative privileges.  
- Understood how SSH configuration affects login control.

