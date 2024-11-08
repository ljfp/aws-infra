output "aws_dynamodb_table_tfer--VisitorCount_id" {
  value = "${aws_dynamodb_table.tfer--VisitorCount.id}"
}

output "aws_dynamodb_table_tfer--terraform-lock-table_id" {
  value = "${aws_dynamodb_table.tfer--terraform-lock-table.id}"
}
