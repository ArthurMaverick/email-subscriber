variable "aws_s3_bucket_object" {
  description = "The configuration for the S3 bucket object"
  type = object({
    bucket        = string
    key           = string
    source        = string
    force_destroy = bool
  },
  {
    source          = ""
    force_destroy   = true
  })
}