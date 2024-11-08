resource "aws_lambda_permission" "tfer--469a03bf-8a4d-5a6c-8fdb-9e2514f38531" {
  action        = "lambda:InvokeFunction"
  function_name = "arn:aws:lambda:eu-west-3:346776441482:function:resumeCount"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:eu-west-3:346776441482:8a4dogfafj/*/GET/visitors"
  statement_id  = "469a03bf-8a4d-5a6c-8fdb-9e2514f38531"
}
