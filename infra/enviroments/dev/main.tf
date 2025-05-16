module "vpc" {
  source = "../../modules/VPC"
  private_subnets = values.private_subnets
  public_subnets = values.public_subnets
  vpc_name = values.vpc_name
  vpc_cidr = values.vpc_cidr
  azs = values.azs
  environment = values.environment

}

module "s3_bucket" {
  source = "../../modules/S3"
  aws_s3_bucket_name = values.aws_s3_bucket_name
  aws_sse_algorithm = values.aws_sse_algorithm
  aws_dynamodb_table_name = values.aws_dynamodb_table_name
  environment = values.environment
  
}