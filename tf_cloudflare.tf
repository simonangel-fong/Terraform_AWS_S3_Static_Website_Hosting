# set record name
data "cloudflare_zone" "record_name" {
  name = var.web_domain_name
}

# Create CNAME record pointing to S3 website endpoint
resource "cloudflare_record" "cf_record" {
  zone_id = data.cloudflare_zone.record_name.id #domain name
  name    = var.web_subdomain_name              # subdomain
  type    = "CNAME"
  content = aws_s3_bucket_website_configuration.website_config.website_domain
  ttl     = 1 # automatic
  proxied = true

  comment = "${aws_s3_bucket.web_host_bucket.id} CNAME hosted on AWS S3"
}
