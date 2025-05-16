variable "aws_s3_bucket_name" {
  description = "Name of the S3 bucket for Terraform state"
  type        = string
#   "meka-tf-state-bucket"
}

variable "aws_sse_algorithm" {
  description = "Server-side encryption algorithm for the S3 bucket"
  type        = string
  
}


variable "aws_dynamodb_table_name" {
  description = "Name of the DynamoDB table for state locking"
  type        = string
#   "meka-tf-state-locks"
}

variable "environment" {
  description = "Environment for the S3 bucket (e.g., development, production)"
  type        = string
}

