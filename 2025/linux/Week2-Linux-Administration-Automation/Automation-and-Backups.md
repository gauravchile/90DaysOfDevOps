# Automation and Backups

## Overview
Automation reduces manual administrative tasks and increases reliability.  
Shell scripting combined with cron scheduling helps perform backups and maintenance automatically.

---

## Key Concepts
- **Shell scripting** uses Bash to run commands automatically.
- **Cron jobs** schedule scripts at specific times.
- Backups ensure data protection and disaster recovery readiness.

---

## Commands Practiced

| Command | Description |
|----------|-------------|
| `tar -czf backup_$(date +%F).tar.gz /data` | Creates a timestamped compressed backup |
| `crontab -e` | Edits cron job schedules |
| `crontab -l` | Lists user’s cron jobs |
| `systemctl status cron` | Checks the status of the cron service |
| `journalctl -u cron` | Views cron service logs (systemd-based systems) |

---

## Notes
- Always test scripts manually before scheduling.  
- Use absolute paths in cron jobs.  
- Redirect logs for better visibility:  
  ```bash
  0 2 * * * /home/user/backup.sh >> /var/log/backup.log 2>&1

---

#Reflection

- Learned how to automate recurring system tasks.
- Practiced creating and scheduling backup scripts.
- Understood the role of automation in DevOps workflows.
