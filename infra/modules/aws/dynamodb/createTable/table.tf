resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" { 
  name           = var.aws_dynamoDB_config.dynamodb_table_name
  hash_key       = var.aws_dynamoDB_config.hash_key
  read_capacity  = var.aws_dynamoDB_config.read_capacity
  write_capacity = var.aws_dynamoDB_config.write_capacity

  attribute { 
    name = var.aws_dynamoDB_attribute.name
    type = var.aws_dynamoDB_attribute.type
  } 
}