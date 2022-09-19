resource "aws_s3_bucket_object" "object" {
  bucket = var.aws_s3_bucket_object.bucket_name
  key    = var.aws_s3_bucket_object.key
  source = var.aws_s3_bucket_object.source
  force_destroy = var.aws_s3_bucket_object.force_destroy

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  # etag = filemd5("path/to/file")
}