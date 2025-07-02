# ########################################
# Web variables
# ########################################

variable "app_name" {
  description = "Application name"
  type        = string
}

variable "web_domain_name" {
  description = "Application domain name"
  type        = string
}

# ########################################
# AWS
# ########################################

variable "aws_region" {
  description = "AWS region code to prosision resources"
  type        = string
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
