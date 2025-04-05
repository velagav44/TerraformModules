resource "aws_subnet" "vpc_subnet" {
  vpc_id            = var.vpc_id # Pass id dynamically
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name        = "Sigmatic-Dev-VPC-Subnet-1"
    Environment = "Development"
  }
}
