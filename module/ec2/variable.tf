variable "instance_name" {
  description = "Name of the instance to be created"
  type = string
}

variable "instance_type" {
  description = "The instance type"
  type = string
}

variable "subnet_id" {
  description = "The VPC subnet the instance will use"
  type = string
}

variable "ami_id" {
  description = "The AMI to use"
  type = string
}

variable "ami_key_pair_name" {
  description = "The Key pair"
  type = string
}

variable "environment" {
  type = string
}

variable "public_key" {
  type = string
}