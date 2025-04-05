variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the subnet will be created"
  type        = string
}
