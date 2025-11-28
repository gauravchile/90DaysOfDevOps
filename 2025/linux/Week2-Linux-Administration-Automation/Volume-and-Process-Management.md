# Volume and Process Management

## Overview
Managing storage and system processes is critical for maintaining a stable and efficient Linux environment.  
You can mount new volumes, monitor disk usage, and control system processes directly from the command line.

---

## Key Concepts
- **Volumes** store persistent data and can be mounted dynamically.  
- **Processes** represent running programs with unique PIDs.  
- Tools like `top` and `htop` help monitor CPU and memory usage.

---

## Commands Practiced

| Command | Description |
|----------|-------------|
| `df -h` | Displays disk usage of all mounted filesystems |
| `du -sh /path` | Shows total disk usage of a directory |
| `fallocate -l 100M /tmp/devops.img` | Creates a 100 MB volume image |
| `mkfs.ext4 /tmp/devops.img` | Formats image file with ext4 filesystem |
| `mount -o loop /tmp/devops.img /mnt/data` | Mounts image as a loop device |
| `ps aux` | Lists all running processes |
| `top` / `htop` | Monitors processes in real-time |
| `kill <PID>` | Terminates a specific process by PID |

---

## Notes
- Mounted devices can be listed using `mount | grep data`.  
- Use `df -Th` to display disk types and space usage.  
- Add permanent mounts to `/etc/fstab` for persistence.  
- Process monitoring ensures resources are used efficiently.

---

## Reflection
- Understood disk usage and volume management.  
- Learned to mount and verify new storage devices.  
- Practiced managing processes and system resources.

