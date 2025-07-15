# ########################################
# Application configuration
# ########################################

# define your app name
variable "app_name" {
  description = "Application name"
  type        = string
}

variable "web_domain" {
  description = "Website domain name"
  type        = string
}

variable "web_subdomain" {
  description = "Website subdomain name"
  type        = string
}

# web_address
locals {
  web_address = "${var.web_subdomain}.${var.web_domain}"
}

# ########################################
# Providers configuration
# ########################################

# AWS
variable "aws_region" {
  description = "AWS region code to prosision resources"
  type        = string
}

variable "aws_acm_cert_arn" {
  description = "AWS ACM certificate"
  type        = string
}

# Cloudflare
variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone id"
  type        = string
}
