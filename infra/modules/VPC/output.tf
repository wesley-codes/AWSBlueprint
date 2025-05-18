output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "vpc_name" {
  value       = module.vpc.name
  description = "Name of the VPC"
  
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR block"
}

output "vpc_azs" {
  value       = module.vpc.azs
  description = "Availability Zones used in the VPC"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "Private subnets in the VPC"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Public subnets in the VPC"
}

output "vpc_security_group_id" {
  value       = module.vpc.default_security_group_id
  description = "Default security group ID of the VPC"
}

output "db_subnet_group_name" {
  value       = module.vpc.database_subnet_group_name
  description = "Database subnet group name"
  
}
