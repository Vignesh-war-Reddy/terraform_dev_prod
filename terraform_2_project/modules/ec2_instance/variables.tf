# modules/ec2_instance/variables.tf

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to be used"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "instance_name" {
  description = "Instance name tag"
  type        = string
}

variable "environment" {
  description = "Environment tag (e.g., dev, prod)"
  type        = string
}
