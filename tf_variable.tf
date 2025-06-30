# ########################################
# Web variables
# ########################################

variable "web_domain_name" {
  type        = string
  description = "Domain name for application"
  default     = "domain_name" # replaced by the record hosted on cloudflare
}

variable "web_subdomain_name" {
  type        = string
  description = "Sub domain name for application"
  default     = "sub_domain_name" # replaced by the sub domain to updated on cloudflare
}

# ########################################
# Provider
# ########################################

variable "aws_region" {
  type        = string
  description = "AWS region code where resources will be provisioned"
  default     = "aws_region" # replaced by the aws region anme
}

variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
  sensitive   = true
  default     = "cf_token" # replace by cloudflare token
}