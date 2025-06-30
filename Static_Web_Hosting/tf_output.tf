output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.web_host_bucket.id
}

output "website_endpoint" {
  description = "Website endpoint for the S3 bucket"
  value       = aws_s3_bucket_website_configuration.website_config.website_endpoint
}
