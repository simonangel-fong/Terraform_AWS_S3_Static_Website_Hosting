# ########################################
# Provider
# ########################################

variable "aws_region" {
  type        = string
  description = "AWS region code where resources will be provisioned"
  default     = "aws_region"
}

# ########################################
# Bucket
# ########################################

variable "domain_name" {
  type        = string
  description = "Domain name for the S3 bucket hosting static content"
  default     = "my_domain"
}
