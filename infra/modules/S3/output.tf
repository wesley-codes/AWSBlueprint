# Output values to use in your backend configuration
output "s3_bucket_name" {
  value = module.s3_bucket.aws_s3_bucket_name
  description = "S3 bucket name for Terraform state"
}

output "dynamodb_table_name" {
  value = module.s3_bucket.aws_dynamodb_table_name
  description = "value of the DynamoDB table name for state locking"
}