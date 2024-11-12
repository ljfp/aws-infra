resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAPIGateway_APIGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = "AWSServiceRoleForAPIGateway"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForApplicationAutoScaling_DynamoDBTable_AWSApplicationAutoscalingDynamoDBTablePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingDynamoDBTablePolicy"
  role       = "AWSServiceRoleForApplicationAutoScaling_DynamoDBTable"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEC2Spot_AWSEC2SpotServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"
  role       = "AWSServiceRoleForEC2Spot"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForResourceExplorer_AWSResourceExplorerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"
  role       = "AWSServiceRoleForResourceExplorer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--GitHubAction-S3Access_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "GitHubAction-S3Access"
}

resource "aws_iam_role_policy_attachment" "tfer--GitHubAction-S3Access_CloudFrontFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
  role       = "GitHubAction-S3Access"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-ec2-spot-fleet-tagging-role_AmazonEC2SpotFleetTaggingRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2SpotFleetTaggingRole"
  role       = "aws-ec2-spot-fleet-tagging-role"
}

resource "aws_iam_role_policy_attachment" "tfer--resumeCount-role-o907i0fj_AWSLambdaBasicExecutionRole-9192e422-e3c4-4638-8c63-005ffec3b4f0" {
  policy_arn = "arn:aws:iam::346776441482:policy/service-role/AWSLambdaBasicExecutionRole-9192e422-e3c4-4638-8c63-005ffec3b4f0"
  role       = "resumeCount-role-o907i0fj"
}

resource "aws_iam_role_policy_attachment" "tfer--resumeCount-role-o907i0fj_DynamoDBUpdatePolicy" {
  policy_arn = "arn:aws:iam::346776441482:policy/DynamoDBUpdatePolicy"
  role       = "resumeCount-role-o907i0fj"
}
