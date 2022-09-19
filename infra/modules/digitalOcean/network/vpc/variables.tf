variable "doks_vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "doks-vpc"
}

variable "doks_vpc_region" {
  description = "The region of the VPC"
  type        = string
  default     = "nyc3"
}
