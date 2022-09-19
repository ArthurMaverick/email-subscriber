variable "aws_dynamoDB_config" {
  description = "aws_dynamoDB_config ref values"
  type = object({
    dynamodb_table_name = string
    hash_key            = string
    read_capacity       = number
    write_capacity      = number
  })
}

variable "aws_dynamoDB_attribute" {
  description = "aws_dynamoDB_attribute ref values" 
  type = object({
    name = string
    type = string
  })
}

# resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" { 
#   name = var.dynamodb_table_name
#   hash_key = "LockID" 
#   read_capacity = 20 
#   write_capacity = 20 

#   attribute { 
#     name = "LockID" 
#     type = "S" 
#   } 
# }