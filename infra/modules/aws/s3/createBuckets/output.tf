output "aws_s3_bucket_id" {
  value = aws_s3_bucket.tf_bucket_state.id
}

output "aws_s3_bucket_name" {
  value = aws_s3_bucket.tf_bucket_state.arn
}

output "aws_s3_bucket_arn" {
  value = aws_s3_bucket.tf_bucket_state.arn
}

output "aws_s3_bucket_acl_id" {
  value = aws_s3_bucket_acl.acl_mode.id
}

output "aws_s3_bucket_acl_mode" {
  value = aws_s3_bucket_acl.acl_mode.acl
}