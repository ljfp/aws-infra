resource "aws_s3_bucket" "tfer--ljfp-resume" {
  bucket        = "ljfp-resume"
  force_destroy = "false"

  grant {
    id          = "b7abfd7c3fa3d9ae4d6d324306712c6f78a643dcf0d7d618ea87c428646da1be"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::ljfp-resume/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ljfp-tf-state" {
  bucket        = "ljfp-tf-state"
  force_destroy = "false"

  grant {
    id          = "b7abfd7c3fa3d9ae4d6d324306712c6f78a643dcf0d7d618ea87c428646da1be"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
