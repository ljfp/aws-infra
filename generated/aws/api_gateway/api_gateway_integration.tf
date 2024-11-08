resource "aws_api_gateway_integration" "tfer--8a4dogfafj-002F-vh2ud6-002F-GET" {
  cache_namespace         = "vh2ud6"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "vh2ud6"
  rest_api_id             = "8a4dogfafj"
  timeout_milliseconds    = "29000"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:eu-west-3:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-3:346776441482:function:resumeCount/invocations"
}

resource "aws_api_gateway_integration" "tfer--8a4dogfafj-002F-vh2ud6-002F-OPTIONS" {
  cache_namespace      = "vh2ud6"
  connection_type      = "INTERNET"
  http_method          = "OPTIONS"
  passthrough_behavior = "WHEN_NO_MATCH"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }

  resource_id          = "vh2ud6"
  rest_api_id          = "8a4dogfafj"
  timeout_milliseconds = "29000"
  type                 = "MOCK"
}
