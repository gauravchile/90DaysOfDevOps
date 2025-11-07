# Networking Commands Cheat Sheet

This cheat sheet summarizes essential Linux networking commands that every DevOps engineer should know. These commands are useful for troubleshooting, verifying connectivity, and managing network configurations in servers, containers, and cloud environments.

---

## 1. Connectivity and Routing

| Command             | Description                                       | Example                             |
| ------------------- | ------------------------------------------------- | ----------------------------------- |
| `ping <host>`       | Tests if a host is reachable and measures latency | `ping google.com`                   |
| `traceroute <host>` | Traces the route packets take to a destination    | `traceroute github.com`             |
| `tracert <host>`    | Windows equivalent of traceroute                  | `tracert google.com`                |
| `curl <url>`        | Sends HTTP requests and retrieves responses       | `curl -I https://example.com`       |
| `wget <url>`        | Downloads files from HTTP/HTTPS/FTP servers       | `wget https://example.com/file.zip` |

---

## 2. DNS and Name Resolution

| Command                | Description                              | Example                  |
| ---------------------- | ---------------------------------------- | ------------------------ |
| `nslookup <domain>`    | Queries DNS to obtain domain/IP mappings | `nslookup devops.com`    |
| `dig <domain>`         | Performs detailed DNS lookups            | `dig example.com +short` |
| `host <domain>`        | Simple DNS lookup utility                | `host google.com`        |
| `cat /etc/resolv.conf` | Displays configured DNS servers          | `cat /etc/resolv.conf`   |

---

## 3. Network Interfaces and IP Configuration

| Command                                   | Description                                            | Example                                |
| ----------------------------------------- | ------------------------------------------------------ | -------------------------------------- |
| `ip a`                                    | Displays IP addresses assigned to all interfaces       | `ip a`                                 |
| `ifconfig`                                | Displays or configures network interfaces (deprecated) | `ifconfig eth0`                        |
| `ip link show`                            | Lists all network interfaces and their status          | `ip link show`                         |
| `ip addr add <IP>/<CIDR> dev <interface>` | Assigns a new IP address to an interface               | `ip addr add 192.168.1.10/24 dev eth0` |
| `ip route`                                | Displays the routing table                             | `ip route`                             |

---

## 4. Monitoring Connections and Ports

| Command                  | Description                                             | Example                |
| ------------------------ | ------------------------------------------------------- | ---------------------- |
| `netstat -tulnp`         | Displays active TCP/UDP connections and listening ports | `netstat -tulnp`       |
| `ss -tuln`               | Faster, modern replacement for netstat                  | `ss -tuln`             |
| `lsof -i`                | Lists open files and network connections                | `sudo lsof -i :80`     |
| `tcpdump -i <interface>` | Captures and analyzes network packets                   | `sudo tcpdump -i eth0` |

---

## 5. Network Diagnostics and Debugging

| Command               | Description                             | Example            |
| --------------------- | --------------------------------------- | ------------------ |
| `arp -a`              | Displays the system’s ARP table         | `arp -a`           |
| `route -n`            | Displays kernel routing table           | `route -n`         |
| `ethtool <interface>` | Displays or changes Ethernet settings   | `ethtool eth0`     |
| `nmap <host>`         | Scans open ports and services on a host | `nmap 192.168.1.1` |

---

## 6. Useful Command Combinations

| Task                                         | Example                    |            |
| -------------------------------------------- | -------------------------- | ---------- |
| Check which service is using a specific port | `sudo netstat -tulnp       | grep 8080` |
| Display only active listening ports          | `ss -tuln`                 |            |
| Verify web server response headers           | `curl -I http://localhost` |            |
| Check DNS resolution and TTL                 | `dig google.com +ttlunits` |            |

---

## Tips

* Use `sudo` for commands requiring root privileges.
* Combine `grep`, `awk`, and `sort` for efficient output filtering.
* Always test from multiple points (local VM, container, or cloud instance) to ensure consistent connectivity.

---

## References

* [Linux Networking Commands Documentation – Red Hat](https://www.redhat.com/en/blog/linux-networking-commands)
* [DigitalOcean – Network Troubleshooting Commands](https://www.digitalocean.com/community/tutorials)
* [TCP/IP Tools Manual – Linux man pages](https://man7.org/linux/man-pages/man7/tcp.7.html)

---

**Week 1 Task Complete:** You have practiced key networking commands that form the backbone of DevOps troubleshooting and network analysis.

