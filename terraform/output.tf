# ########################################
# AWS
# ########################################

# bucket
output "aws_cloudfront_domain" {
  description = "Website endpoint of cloudfront"
  value       = "https://${aws_cloudfront_distribution.cloudfront_distribution.domain_name}"
}

# ########################################
# cloudflare
# ########################################

# Output the Cloudflare-proxied URL
output "cloudflare_hsotname" {
  description = "Website URL through Cloudflare"
  value       = "https://${cloudflare_record.cf_record.hostname}/"
}
