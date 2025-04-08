variable "subnet_id" {
  description = "Subnet ID of the Subnet"
  type        = string
}

variable "secuitygroup_id" {
  description = "Security-Group ID"
  type        = string
}

variable "key_name" {
  description = "Key-name"
  type        = string
}

variable "ami" {
  description = "ami of ec2 instance"
  type        = string
}

variable "ec2-instance-type" {
  description = "ami of ec2 instance"
  type        = string
}

variable "tenancy-type" {
  description = "ec2 instance-type"
  type        = string
}

variable "volume_size" {
  description = "Root EBS volume size in GiB"
  type        = number
  default     = 225
}

variable "volume_type" {
  description = "Type of EBS volume (e.g., gp2, gp3, io1)"
  type        = string
  default     = "gp3"
}
