# ########################################
# Cloudflare
# ########################################

resource "cloudflare_record" "cf_record" {
  zone_id = var.cloudflare_zone_id
  name    = "${var.app_name}.${var.app_domain_name}"
  content = aws_s3_bucket_website_configuration.website_config.website_endpoint
  type    = "CNAME"

  ttl     = 1
  proxied = true
}
