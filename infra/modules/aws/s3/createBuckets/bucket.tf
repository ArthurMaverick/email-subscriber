resource "aws_s3_bucket" "tf_bucket_state" { 
    bucket        = var.aws_s3_bucket_config.bucket
    force_destroy = var.aws_s3_bucket_config.force_destroy

    lifecycle {
      prevent_destroy = false
    }
    tags = {
      Project  = "${var.aws_s3_bucket_config.bucket}"
  }
}

resource "aws_s3_bucket_acl" "acl_mode" {
  acl    = var.aws_s3_bucket_acl_mode
  bucket = aws_s3_bucket.tf_bucket_state.id
}