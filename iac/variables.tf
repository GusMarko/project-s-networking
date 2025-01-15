variable "vpc_cidr_block" {
  type = string
  description = "VPC cidr block"
}

variable "pub_sub_cidr" {
  type = string
  description = "Public subnet of project VPC"
}

variable "priv_sub_cidr" {
  type = string
  description = "Private subnet of project VPC"
}

variable "env" {
  type = string
  description = "Current branch - used in tags imported thru helper script"
}

variable "aws_region" {
  type = string
}

variable "access_key" {
  type = string
  description = "AWS Credentials"
}

variable "secret_key" {
  type = string
  description = "AWS Credentials"
}