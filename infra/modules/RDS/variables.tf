variable "vpc_security_group_id" {
  description = "VPC security group ID"
  type        = list(string)

}

variable "db_private_subnets_id" {
  description = "DB private subnets ID"
  type        = list(string)

}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
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
variable "db_name" {
  description = "Database name"
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
variable "username" {
  description = "Database username"
  type        = string

}
variable "password" {
  description = "Database password"
  type        = string

}
variable "identifier" {
  description = "Database identifier"
  type        = string

}
variable "environment" {
  description = "Deployment environment"
  type        = string
  
}