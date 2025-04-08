resource "aws_vpc" "vpc-one" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name        = "Sigmatic-Dev-VPC"
    Environment = "Development"
    cidr_block  = "10.0.0.0/16"
  }
}
