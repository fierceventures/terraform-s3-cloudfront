resource "aws_s3_bucket" "site" {
  bucket = "${var.env}-${var.name}-site"
  acl = "public-read"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  tags {
    Name = "Re-Frame site"
  }
}

resource "aws_cloudfront_distribution" "s3_dist" {
  origin {
    domain_name = "${aws_s3_bucket.site.bucket_domain_name}"
    origin_id = "${var.env}-${var.name}-site-origin"
  }

  enabled = true
  is_ipv6_enabled = true
  default_root_object = "index.html"

  default_cache_behavior {
    allowed_methods =  ["HEAD", "DELETE", "POST", "GET", "OPTIONS", "PUT", "PATCH"]
    cached_methods = ["GET", "HEAD"]
    target_origin_id = "${var.env}-${var.name}-site-origin"

    forwarded_values {
      cookies {
        forward = "none"
      }
      query_string = true
    }

    viewer_protocol_policy = "allow-all"
    max_ttl = 86400
    default_ttl = 3600
    min_ttl = 0
  }

  price_class = "PriceClass_200"

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations = ["AU"]
    }

  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  custom_error_response {
    error_code = 404
    response_code = 200
    response_page_path = "/index.html"
  }
}
