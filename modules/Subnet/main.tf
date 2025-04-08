resource "aws_subnet" "vpc_subnet" {
  vpc_id                  = var.vpc_id # Pass id dynamically
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name        = "Sigmatic-Dev-VPC-Subnet-1"
    Environment = "Development"
    cidr_block  = "10.0.1.0/24"
  }
}
