# Week 4 – Git & GitHub Challenge Solution

## Overview

This week, I enhanced my understanding of Git and GitHub workflows by implementing a **fully automated GitHub push script** using Bash.
The script automates repetitive tasks like staging, committing, and pushing changes to GitHub, making it efficient for DevOps workflows.

---

## Script Details

### File Name

`git_push.sh`

### Description

This Bash script automates the following:

* Initializes a Git repository if not already present.
* Configures Git user credentials and SSH authentication.
* Creates a GitHub repository using the GitHub CLI.
* Stages, commits, and pushes changes automatically.
* Supports both HTTPS (PAT) and SSH authentication securely.

---

## Features Implemented

| Feature                       | Description                                                  |
| ----------------------------- | ------------------------------------------------------------ |
| Automatic Commit and Push     | Stages, commits, and pushes changes in one step              |
| Dynamic Branching             | Prompts for branch name, defaults to `main` if none provided |
| SSH Key Management            | Generates and registers SSH keys on GitHub if missing        |
| Token Authentication          | Uses GitHub PAT for secure CLI authentication                |
| Automatic Repository Creation | Creates the repository if it does not exist                  |
| Logging                       | Logs script activity to `/tmp/<project>_gitpush.log`         |
| Cross-Platform Compatibility  | Supports Debian, Ubuntu, CentOS, and RHEL systems            |

---

## Script Usage

### Syntax

```bash
./git_push.sh <Project-name> <GitHub-Username> "<commit-message>" [<directory-to-push>]
```

### Parameters

| Argument                | Description                                                            |
| ----------------------- | ---------------------------------------------------------------------- |
| `<Project-name>`        | Name of local folder and GitHub repository                             |
| `<GitHub-Username>`     | GitHub username                                                        |
| `<commit-message>`      | Commit message (use quotes if it contains spaces)                      |
| `[<directory-to-push>]` | Optional. Specific folder or file to push. Defaults to entire project. |

### Example Commands

```bash
# Push a specific folder to a branch
./git_push.sh 90DaysOfDevOps gauravchile "Added Week 1 Networking Fundamentals" 2025/networking/week1-networking

# Push the entire project (defaults to 'main')
./git_push.sh 90DaysOfDevOps gauravchile "Updated Week 4 GitHub Challenge Docs"
```

---

## Setup Steps

1. **Generate a GitHub Personal Access Token (PAT)**
   [Create PAT here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
   Required scopes: `repo`, `workflow`, `admin:public_key`, `admin:org`

2. **Install GitHub CLI (if not installed)**

   ```bash
   sudo apt install gh -y
   ```

3. **Make the script executable**

   ```bash
   chmod +x git_push.sh
   ```

4. **Run the script**

   ```bash
   ./git_push.sh <Project-name> <GitHub-Username> "<commit-message>"
   ```

---

## Internal Workflow

| Step | Description                                      |
| ---- | ------------------------------------------------ |
| 1    | Validate arguments and initialize logs in `/tmp` |
| 2    | Install GitHub CLI (`gh`) if missing             |
| 3    | Authenticate GitHub CLI using PAT                |
| 4    | Check for existing SSH keys or generate new ones |
| 5    | Add SSH key to GitHub account                    |
| 6    | Initialize Git repository if not present         |
| 7    | Commit staged files with provided message        |
| 8    | Configure remote repository using SSH            |
| 9    | Create repository on GitHub if it doesn’t exist  |
| 10   | Push commits securely via SSH                    |

---

## What I Learned

### Technical Learning

* Automating Git workflows using Bash scripting.
* Managing GitHub repositories programmatically using GitHub CLI (`gh`).
* Implementing SSH-based authentication programmatically.
* Using logging and error handling effectively in Bash scripts.

### DevOps Learning

* Eliminated repetitive Git operations through automation.
* Learned how Git automation fits into CI/CD pipelines.
* Gained experience in securing Git automation using SSH and PAT authentication.

---

## Key Benefits

| Benefit     | Impact                                            |
| ----------- | ------------------------------------------------- |
| Automation  | Reduces manual effort and errors                  |
| Reusability | Can be adapted for multiple GitHub projects       |
| Security    | Uses secure SSH and PAT-based authentication      |
| Scalability | Integrates easily with CI/CD and GitOps workflows |

---

## Example Log Output

```text
[2025-11-09 22:10:32] ==== Starting GitHub Push for '90DaysOfDevOps' ====
[*] Authenticating GitHub using token...
[*] SSH key generated successfully.
[*] GitHub repository already exists.
[*] Pushing to GitHub via SSH...
[*] Project '90DaysOfDevOps' successfully pushed to GitHub.
Logs saved at: /tmp/90DaysOfDevOps_gitpush.log
```

---

## Summary

### What I Know

* GitHub CLI automation.
* SSH and PAT authentication setup.
* End-to-end Git commit and push automation.
* Logging and error management in Bash scripting.

### What I Learned

* Combined Git, Bash, and GitHub APIs into a single workflow.
* Created a reusable script for efficient version control automation.
* Enhanced understanding of secure GitHub automation in DevOps.

---

## Reflection

This project connected Git operations with DevOps automation.
It simplifies Git tasks, enforces consistent workflows, and enhances security — a strong foundation for CI/CD and GitOps environments.

