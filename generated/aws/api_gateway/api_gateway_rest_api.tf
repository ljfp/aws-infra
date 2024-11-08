resource "aws_api_gateway_rest_api" "tfer--8a4dogfafj_VisitorCountAPI" {
  api_key_source               = "HEADER"
  description                  = "API to interact with the VisitorCount Dynamo tables."
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  name = "VisitorCountAPI"
}
