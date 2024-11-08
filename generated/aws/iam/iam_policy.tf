resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-9192e422-e3c4-4638-8c63-005ffec3b4f0" {
  name = "AWSLambdaBasicExecutionRole-9192e422-e3c4-4638-8c63-005ffec3b4f0"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-west-3:346776441482:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-west-3:346776441482:log-group:/aws/lambda/resumeCount:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--DynamoDBUpdatePolicy" {
  description = "Roles who have this policy are allowed to retrieve and update the items from the VisitorCount table in DynamoDB."
  name        = "DynamoDBUpdatePolicy"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:UpdateItem",
        "dynamodb:GetItem"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:eu-west-3:346776441482:table/VisitorCount"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
