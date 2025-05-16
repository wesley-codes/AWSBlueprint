

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.aws_s3_bucket_name

  lifecycle {
    prevent_destroy = false
  }


  tags = {
    Name        = "${var.aws_s3_bucket_name}-TerraMesh"
    Environment = var.environment
    Terraform   = "true"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  
  versioning_configuration {
    status = "Enabled"
  }
}

# Optional: Configure server-side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.aws_sse_algorithm
    }
  }
}

# Optional: Block public access
resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Optional but recommended: DynamoDB for state locking
resource "aws_dynamodb_table" "terraform_locks" {
  name         =  var.aws_dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
     Name        = "${var.aws_dynamodb_table_name}-dynamoDB-table-TerraMesh"
    Environment = var.environment
    Terraform   = "true"
  }
}

