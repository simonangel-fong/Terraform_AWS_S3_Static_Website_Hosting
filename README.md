# Terraform Project: Enable Static Website Hosting on AWS S3

An **Infrastructure as Code (IaC)** solution to host a static website on **AWS S3** and update **Cloudflare** domain settings using Terraform.

---

## Prerequisites

- AWS CLI access key with appropriate permissions.
- Cloudflare API token for DNS management.

---

## Usage

1. Configure AWS CLI and Initialize Terraform

```sh
aws configure
cd terraform
terraform init
```

2. Create and input variables in `terraform.tfvars`

| Variable               | Description                                    |
| ---------------------- | ---------------------------------------------- |
| `app_name`             | Application name, also used as subdomain name. |
| `domain_name`          | Domain name hosted on Cloudflare.              |
| `aws_region`           | AWS region to provision resources.             |
| `cloudflare_api_token` | Cloudflare API Token.                          |
| `cloudflare_zone_id`   | Cloudflare zone id of the domain name.         |

3. Create website in `web` directory

4. Deploy website

```sh
# apply with env var
terraform apply -auto-approve

terraform destroy -auto-approve
```

---

## How does it work?

1. **Create S3 Bucket**: Provision an AWS S3 bucket configured for static website hosting.

2. **Upload Static Website Files**: Use Terraform to upload required static files to the S3 bucket.

3. **Enable Static Website Hosting**: Configure the S3 bucket for static website hosting.

4. **Configure Bucket Policy**: Define access policies to control permissions for the S3 bucket.

5. **Update DNS with Cloudflare**

![pic](./screenshot02.png)

---

## Benefit

- **Automation**

Simplifies infrastructure deployment through **automated workflows**, minimizing manual effort and ensuring uniformity **across environments**.

- **Ease of Use**

Requires only `AWS` and `Cloudflare` access, with **customization** of web hosting requiring just four arguments.

- integrate CICD


terraform init -backend-config="bucket=${{ secrets.AWS_BACKEND_BUCKET }}"


    bucket = ""
    region = ""
    key    = ""