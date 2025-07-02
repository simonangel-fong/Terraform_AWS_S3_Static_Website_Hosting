# ########################################
# Web variables
# ########################################

variable "web_domain_name" {
  type        = string
  description = "Domain name for application"
}

variable "web_subdomain_name" {
  type        = string
  description = "Sub domain name for application"
}

# ########################################
# AWS
# ########################################

variable "aws_region" {
  type        = string
  description = "AWS region code where resources will be provisioned"
}

# ########################################
# Cloudflare
# ########################################

variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone id"
  type        = string
}
