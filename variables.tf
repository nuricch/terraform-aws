variable "naming_prefix" {
  type        = string
  description = "Naming prefix for resources"
  default     = ""
}

variable "aws_region" {
  type        = string
  description = "Name of the AWS Region"
  default     = ""
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR BLock for VPC"
  default     = ""
}

variable "environment" {
  type        = string
  description = "Name of the environment"
  default     = ""
}

variable "application" {
  type        = string
  description = "Name of the application"
  default     = ""
}

variable "instance_type" {
  type        = string
  description = "TYpe of the EC2 instance"
  default     = ""
}

variable "worker_groups_name" {
  type        = string
  description = "Name of the Workers Groups"
  default     = ""
}

variable "asg_dc" {
  type        = number
  description = "ASG Desired Capacity for Worker Groups"
  default     = null
}

variable "cluster_name" {
  type        = string
  description = "Name of EKS Cluster"
  default     = ""
}

variable "cluster_version" {
  type        = string
  description = "Cluster version for Kubernetes"
  default     = ""
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
  default     = ""
}