output "aws_s3_bucket_policy_tfer--ljfp-resume_id" {
  value = "${aws_s3_bucket_policy.tfer--ljfp-resume.id}"
}

output "aws_s3_bucket_tfer--ljfp-resume_id" {
  value = "${aws_s3_bucket.tfer--ljfp-resume.id}"
}

output "aws_s3_bucket_tfer--ljfp-tf-state_id" {
  value = "${aws_s3_bucket.tfer--ljfp-tf-state.id}"
}
