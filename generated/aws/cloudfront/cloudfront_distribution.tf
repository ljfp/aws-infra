resource "aws_cloudfront_distribution" "tfer--E3DWTM7D6KND14" {
  aliases = ["resume.ljfp.xyz"]
  comment = "A simple distribution with an S3 origin"

  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]
    compress        = "false"
    default_ttl     = "86400"

    forwarded_values {
      cookies {
        forward = "none"
      }

      headers      = ["Origin"]
      query_string = "false"
    }

    max_ttl                = "31536000"
    min_ttl                = "86400"
    smooth_streaming       = "false"
    target_origin_id       = "s3-origin-ljfp-resume"
    viewer_protocol_policy = "redirect-to-https"
  }

  default_root_object = "index.html"
  enabled             = "true"
  http_version        = "http1.1"
  is_ipv6_enabled     = "false"

  origin {
    connection_attempts = "3"
    connection_timeout  = "10"
    domain_name         = "ljfp-resume.s3.amazonaws.com"
    origin_id           = "s3-origin-ljfp-resume"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  retain_on_delete = "false"
  staging          = "false"

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:346776441482:certificate/a7343a70-0e14-4791-81a1-30e11934dae3"
    cloudfront_default_certificate = "false"
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}
