variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "database_subnet_group_name" {
  description = "Name of the database subnet group"
  type        = string

}


variable "engine" {
  description = "Database engine"
  type        = string

}

variable "engine_version" {
  description = "Database engine version"
  type        = string

}

variable "instance_class" {
  description = "Instance class"
  type        = string

}


variable "family" {
  description = "value of the family"
  type        = string
}

variable "major_engine_version" {
  description = "Major engine version"
  type        = string

}

variable "rds_instances" {
  type = map(object({
    identifier = string
    db_name    = string
    username   = string
    password   = string
  }))
  description = "Map of RDS instance configurations"
}

