terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }

  # # Configuring a remote backend
  # backend "s3" {
  #   bucket = "your_s3_backend_bucket"
  #   region = "your_s3_backend_bucket_region"
  #   key    = "your_s3_backend_bucket_prefix/terraform.tfstate"
  # }
}

provider "aws" {
  region = var.aws_region
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
