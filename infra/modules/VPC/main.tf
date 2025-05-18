module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    name = var.vpc_name
    cidr = var.vpc_cidr
    azs = var.azs
    private_subnets = var.private_subnets
    public_subnets = var.public_subnets
    enable_nat_gateway = true   
    enable_vpn_gateway = true
    single_nat_gateway = true
    enable_dns_hostnames = true
    enable_dns_support = true
    database_subnet_group_name = var.database_subnet_group_name


    tags = {
        Name = "${var.vpc_name}"
        Environment = var.environment
        Terraform = true
    }
    vpc_tags = {
        Name = "${var.vpc_name}-vpc"
        Environment = var.environment
        Terraform = true
    }
    public_subnet_tags = {
        Name = "${var.vpc_name}-public"
        Environment = var.environment
        Terraform = true
    }
    private_subnet_tags = {
        Name = "${var.vpc_name}-private"
        Environment = var.environment
        Terraform = true
    }
  
}



