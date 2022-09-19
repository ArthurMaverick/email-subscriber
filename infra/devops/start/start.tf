## CREATE INFRA TO SAFE TERRAFORM STATE
module "dynamo_table_terraform_state" {
  source              = "../../modules/aws/dynamodb/createTable"
  aws_dynamoDB_config = {
    dynamodb_table_name = "terraform-state-${local.env}-table"
    hash_key            =  "LockID" 
    read_capacity       = 20
    write_capacity      = 20
  }
  aws_dynamoDB_attribute = {
    name = "LockID" 
    type = "S" 
  }

}

module "s3_bucket" {
  source = "../../modules/aws/s3/createBuckets"
  aws_s3_bucket_config = {
    bucket_name     = "terraform-state-${local.env}-bucket"
    force_destroy   = true
  }
  aws_s3_bucket_acl_mode = "private"
}

module "s3_object" {
  source = "../../modules/aws/s3/createObjects"
  aws_s3_bucket_object = {
    bucket        = module.s3_bucket.aws_s3_bucket_name
    key           = "${local.env}-terraform.tfstate"
    source        = "state"
    force_destroy = true
  }
  aws_s3_bucket_acl_mode = "private"

  depends_on  = [
    module.s3_bucket
  ]
}
module "dynamo_db" {
  source = "../../modules/aws/dynamodb/createTable"
  aws_dynamoDB_config = {
    dynamodb_table_name = "terraform-state-${local.env}-table"
    hash_key            = "LockID"
    read_capacity       = 20
    write_capacity      = 20
  }
  aws_dynamoDB_attribute = {
    name = "LockID"
    type = "S"
  }
}