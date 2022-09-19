output "aws_dynamodb_table_name" {
  value = aws_dynamodb_table.dynamodb-terraform-state-lock.name
}

output "aws_dynamodb_table_id" {
  value = aws_dynamodb_table.dynamodb-terraform-state-lock.id
}

output "aws_dynamodb_table_arn" {
  value = aws_dynamodb_table.dynamodb-terraform-state-lock.arn
}