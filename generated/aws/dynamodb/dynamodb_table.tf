resource "aws_dynamodb_table" "tfer--VisitorCount" {
  attribute {
    name = "PageName"
    type = "S"
  }

  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = "false"
  hash_key                    = "PageName"
  name                        = "VisitorCount"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  table_class    = "STANDARD"

  tags = {
    Environment = "Production"
    Name        = "VisitorCountTable"
  }

  tags_all = {
    Environment = "Production"
    Name        = "VisitorCountTable"
  }

  write_capacity = "1"
}

resource "aws_dynamodb_table" "tfer--terraform-lock-table" {
  attribute {
    name = "LockID"
    type = "S"
  }

  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = "false"
  hash_key                    = "LockID"
  name                        = "terraform-lock-table"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "1"
  stream_enabled = "false"
  table_class    = "STANDARD"
  write_capacity = "1"
}
