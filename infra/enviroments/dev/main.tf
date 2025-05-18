module "vpc" {
  source                     = "../../modules/VPC"
  private_subnets            = var.private_subnets
  public_subnets             = var.public_subnets
  vpc_name                   = var.vpc_name
  vpc_cidr                   = var.vpc_cidr
  azs                        = var.azs
  environment                = var.environment
  database_subnet_group_name = var.database_subnet_group_name

}

module "rds" {
  for_each              = var.rds_instances
  source                = "../../modules/rds"
  vpc_security_group_id = [module.vpc.vpc_security_group_id]
  db_private_subnets_id = module.vpc.private_subnets
  db_subnet_group_name  = module.vpc.db_subnet_group_name
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  family                = var.family
  major_engine_version  = var.major_engine_version
  identifier            = each.value.identifier
  db_name               = each.value.db_name
  username              = each.value.username
  password              = each.value.password

}


# module "s3_bucket" {
#   source = "../../modules/S3"
#   aws_s3_bucket_name = var.aws_s3_bucket_name
#   aws_sse_algorithm = var.aws_sse_algorithm
#   aws_dynamodb_table_name = var.aws_dynamodb_table_name
#   environment = var.environment

# }


terraform {
  backend "s3" {
    bucket  = "meka-tf-state-bucket"
    key     = "dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}