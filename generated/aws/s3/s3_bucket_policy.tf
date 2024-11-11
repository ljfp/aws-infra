resource "aws_s3_bucket_policy" "tfer--ljfp-resume" {
  bucket = "ljfp-resume"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::ljfp-resume/*\"}],\"Version\":\"2012-10-17\"}"
}
