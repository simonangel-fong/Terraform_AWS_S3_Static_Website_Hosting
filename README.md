# Terraform Project: Enable Static Website Hosting on AWS S3

A repo to host a static website on AWS S3 using Terraform.

---

## Configure AWS CLI and Terraform

- Congifure AWS CLI with appropriate credentials and initialize Terraform.

```sh
aws configure

terraform init
```

---

## Deployment Steps

- 1. Create S3 Bucket
  - Provision an AWS S3 bucket configured for static website hosting.
- 2. Upload Static Website Files
  - Utilize Terraform to upload static files required for the website.
- 3. Enable Static Website Hosting
  - Configure the S3 bucket for static website hosting.
- 4. Configure Bucket Policy
  - Define policies to control access to your S3 bucket.

