resource "aws_security_group" "security_group" {
  name        = var.security_group_name
  description = "Allow Traffic for Dev environment"
  vpc_id      = var.vpc_id
  tags = {
    Name        = "Sigmatic-Dev-SecurityGroup"
    Environment = "Development"
  }

}
