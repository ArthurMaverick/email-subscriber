# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {
  type = string
}
variable "aws_region" {
  type = string
}
variable "project_name" {
  type = string
}
