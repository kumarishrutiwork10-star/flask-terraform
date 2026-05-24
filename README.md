# Flask CI/CD Pipeline

Automated CI/CD pipeline that builds, tests, and deploys a Python Flask 
application to AWS EC2 using GitHub Actions and Docker.

## Architecture

git push → GitHub Actions → Lint & Test → Build & Push to ECR → Deploy to EC2

## How it works

1. **Lint & Test** — flake8 checks code quality, pytest runs unit tests
2. **Build & Push** — Docker image built and pushed to Amazon ECR
3. **Deploy** — EC2 pulls latest image from ECR and restarts the container

## Tech Stack

- Python / Flask
- Docker
- Amazon ECR (container registry)
- Amazon EC2 (hosting)
- GitHub Actions (CI/CD)

## Live Demo

http://65.2.186.92:5000

## Key Features

- Zero manual deployment steps — every git push triggers full pipeline
- Health check endpoint validates successful deployment before completing
- IAM role-based authentication — no credentials stored on server
- Automatic container restart on failure with Docker restart policy

## Terraform

- Provisioned full AWS infrastructure using Terraform — VPC, subnet, internet gateway, security group, IAM role, ECR, and EC2 — replacing manual console setup with reproducible IaC; reduced environment provisioning to a single terraform apply command
