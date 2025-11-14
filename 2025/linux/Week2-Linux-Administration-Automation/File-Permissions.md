# File Permissions

## Overview
Linux file permissions control which users and groups can access, modify, or execute files and directories.  
Proper permissions ensure both functionality and security across the system.

---

## Key Concepts
- Permissions are divided into **read (r)**, **write (w)**, and **execute (x)**.
- There are three permission groups: **owner**, **group**, and **others**.
- Permissions can be set using either **symbolic** or **numeric** notation.

---

## Commands Practiced

| Command | Description |
|----------|-------------|
| `ls -l` | Lists files with detailed permission info |
| `chmod 640 filename` | Grants read/write to owner, read to group, none to others |
| `chown user:group filename` | Changes file ownership |
| `umask` | Sets the default permission mask for new files |
| `stat filename` | Displays detailed file metadata and permissions |

---

## Notes
- Numeric representation:  
  - `r = 4`, `w = 2`, `x = 1`  
  - Example: `chmod 755` → owner: rwx, group: r-x, others: r-x  
- Symbolic mode example: `chmod g+w,o-r filename`
- File permissions are essential for shared directories and secured data access.

---

## Reflection
- Understood how to view and modify permissions.  
- Practiced applying symbolic and numeric permissions.  
- Learned to balance usability and security in file systems.

