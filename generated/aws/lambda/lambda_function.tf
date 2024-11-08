resource "aws_lambda_function" "tfer--resumeCount" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "resumeCount"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/resumeCount"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::346776441482:role/service-role/resumeCount-role-o907i0fj"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}
