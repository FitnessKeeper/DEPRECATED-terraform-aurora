variable "env" {}

variable "cluster_size" {
  description = "Number of cluster instances to create"
}

variable "instance_class" {
  description = "Instance class to use when creating RDS cluster"
  default = "db.r3.large"
}

variable "azs" {
  description = "A list of Availability Zones in the Region"
  type        = "list"
}

variable "name" {
  description = "Name for the Redis replication group i.e. cmsCommon"
}

variable "allowed_cidr" {
  type        = "list"
  default     = ["127.0.0.0/32"]
  description = "A list of Security Group ID's to allow access to."
}

variable "allowed_security_groups" {
  type        = "list"
  description = "A list of Security Group ID's to allow access to."
}

variable "subnets" {
  description = "Subnets to use in creating RDS subnet group (must already exist)"
  type        = "list"
}

variable "db_port" { default = 3306 }

# see aws_rds_cluster documentation for these variables
variable "database_name" { }
variable "master_username" { }
variable "master_password" { }

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = "30"
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created"
  default     = "01:00-03:00"
}
variable "storage_encrypted" { default = true }
variable "apply_immediately" { default = false }

variable "vpc_id" {
  description = "VPC ID"
}
