module "rds" {
  source         = "terraform-aws-modules/rds/aws"
  engine         = var.engine
  engine_version = var.engine_version
  instance_class                      = var.instance_class
  allocated_storage                   = 20
  db_name                             = var.db_name
  family                              = var.family
  major_engine_version                = var.major_engine_version
  username                            = var.username
  password                            = var.password
  identifier                          = var.identifier
  create_db_subnet_group              = true
  iam_database_authentication_enabled = true
  vpc_security_group_ids              = var.vpc_security_group_id
  subnet_ids                          = var.db_private_subnets_id
  db_subnet_group_name                = var.db_subnet_group_name
  skip_final_snapshot                 = true

  tags = {
    Name        = var.identifier
    Environment = var.environment
    Terraform   = true
  }

}