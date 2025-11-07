# AWS EC2 and Security Groups — Week 1 Challenge

Security Groups act as virtual firewalls for your AWS EC2 instances.
They control inbound and outbound traffic based on defined rules and play a crucial role in securing cloud environments.

---

## Step-by-Step: Launch EC2 and Configure Security Groups

### 1. Launch a Free-Tier EC2 Instance

1. Go to AWS Console → EC2 → Launch Instance
2. Choose Amazon Linux 2 AMI
3. Select t2.micro (Free Tier Eligible)
4. Configure storage and key pair for SSH access
5. Proceed to Security Group Configuration

---

### 2. Create a New Security Group

A Security Group defines inbound (ingress) and outbound (egress) rules. Each rule specifies protocol, port, and source/destination.

#### Example Inbound Rules:

| Type  | Protocol | Port Range | Source    | Description                      |
| ----- | -------- | ---------- | --------- | -------------------------------- |
| SSH   | TCP      | 22         | My IP     | Secure access from local machine |
| HTTP  | TCP      | 80         | 0.0.0.0/0 | Allow web traffic from anywhere  |
| HTTPS | TCP      | 443        | 0.0.0.0/0 | Secure web traffic               |

#### Outbound Rules:

By default, outbound rules allow all traffic. This lets your instance access the internet.

---

### 3. Launch and Connect to EC2 Instance

Once the instance is created:

```bash
ssh -i my-key.pem ec2-user@<EC2-PUBLIC-IP>
```

Verify connectivity and web access:

```bash
ping google.com
curl http://<EC2-PUBLIC-IP>
```

---

### 4. Test HTTP Access

1. Install a web server on your EC2 instance:

   ```bash
   sudo yum update -y
   sudo yum install httpd -y
   sudo systemctl start httpd
   sudo systemctl enable httpd
   ```
2. Verify access in your browser:
   http://<EC2-PUBLIC-IP>

If the page loads, your HTTP rule works correctly.

---

## Security Best Practices

* Restrict SSH (port 22) to your IP only.
* Use separate Security Groups for different services (e.g., app, DB, bastion).
* Enable VPC Flow Logs to monitor traffic.
* Regularly audit and clean up unused rules.
* Prefer HTTPS (443) over HTTP for production workloads.
* Use IAM Roles instead of hardcoding AWS credentials.

---

## References

* [AWS Security Groups Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
* [AWS EC2 Free Tier](https://aws.amazon.com/free/)

---

**Week 1 Task Complete:** You have successfully launched an EC2 instance and configured Security Groups — a core networking skill.

