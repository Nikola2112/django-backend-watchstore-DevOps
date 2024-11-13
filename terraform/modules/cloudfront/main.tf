variable "s3_bucket_arn" {}

resource "aws_cloudfront_distribution" "this" {
  enabled = true

  origin {
    domain_name = var.s3_bucket_arn
    origin_id   = "S3-${var.s3_bucket_arn}"
  }
}

