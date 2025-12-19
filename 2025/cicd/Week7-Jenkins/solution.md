# Week 7 – Jenkins CI/CD Challenge Solution

## Task 1: CI/CD Pipeline
Created a declarative Jenkins pipeline with Build, Test, Deploy stages.
Declarative pipelines improve readability and reduce syntax errors.

## Task 2: Multi-Branch Pipeline
Configured a multibranch pipeline to automatically build feature and main branches.
This improves CI by validating code before merge.

## Task 3: Jenkins Agents
Configured Linux and Windows agents using labels.
Distributed builds improve speed and reliability.

## Task 4: RBAC
Implemented role-based access control using Role Strategy Plugin.
RBAC prevents unauthorized job modifications.

## Task 5: Shared Library
Created reusable notification logic using Jenkins Shared Library.
This avoids duplication and ensures consistency.

## Task 6: Trivy Vulnerability Scan
Integrated Trivy to scan Docker images.
Security scanning prevents vulnerable images from reaching production.

## Task 7: Dynamic Parameters
Added runtime parameters for environment and version.
This makes pipelines flexible for production use.

## Task 8: Email Notifications
Configured SMTP and automated build notifications using emailext.

## Task 9: Troubleshooting & Monitoring
Used Jenkins logs, Replay feature, and debugging outputs.
Monitoring ensures pipeline stability and faster issue resolution.

## Key Learnings
- Declarative pipelines are safer and cleaner
- RBAC is critical for CI/CD security
- Shared libraries enable enterprise scalability
