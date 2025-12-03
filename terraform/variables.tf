variable "region" { type = string, default = "us-east-1" }
variable "name"   { type = string, default = "inft1210" }

variable "vpc_cidr"              { type = string, default = "10.0.0.0/16" }
variable "public_subnet_a_cidr"  { type = string, default = "10.0.1.0/24" }
variable "public_subnet_b_cidr"  { type = string, default = "10.0.2.0/24" }
variable "private_subnet_a_cidr" { type = string, default = "10.0.11.0/24" }
variable "private_subnet_b_cidr" { type = string, default = "10.0.12.0/24" }

variable "ecr_repo_name" { type = string, default = "inft1210-api" }
variable "image_tag"     { type = string, default = "v1" }
