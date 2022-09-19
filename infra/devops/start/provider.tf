provider "aws" { 
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "arthur-santos"
  region                   = var.aws_region 
} 