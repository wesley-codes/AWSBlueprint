variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "Availability Zones for the VPC"
  type        = list(string)
  
}

variable "private_subnets" {
  description = "Private subnets for the VPC"
  type        = list(string)
  
}

variable "public_subnets" {
  description = "Public subnets for the VPC"
  type        = list(string)
  
}

variable "environment" {
  description = "Environment for the VPC (e.g., development, production)"
  type        = string
  
}

variable "database_subnet_group_name" {
  description = "Name of the database subnet group"
  type        = string
  
}