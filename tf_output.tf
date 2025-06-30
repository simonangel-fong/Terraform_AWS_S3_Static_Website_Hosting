# ########################################
# aws bucket
# ########################################

output "aws_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.web_host_bucket.id
}

output "aws_website_endpoint" {
  description = "Website endpoint for the S3 bucket"
  value       = aws_s3_bucket_website_configuration.website_config.website_endpoint
}

# ########################################
# cloudflare
# ########################################

# Output the Cloudflare-proxied URL
output "cloudflare_hsotname" {
  description = "Website URL through Cloudflare"
  value       = cloudflare_record.cf_record.hostname 
}
