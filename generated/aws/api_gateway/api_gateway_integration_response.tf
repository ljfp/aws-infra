resource "aws_api_gateway_integration_response" "tfer--8a4dogfafj-002F-vh2ud6-002F-GET-002F-200" {
  http_method = "GET"
  resource_id = "vh2ud6"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  rest_api_id = "8a4dogfafj"
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "tfer--8a4dogfafj-002F-vh2ud6-002F-OPTIONS-002F-200" {
  http_method = "OPTIONS"
  resource_id = "vh2ud6"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  }

  rest_api_id = "8a4dogfafj"
  status_code = "200"
}
