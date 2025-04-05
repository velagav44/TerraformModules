resource "aws_security_group" "security_group" {
  name        = var.security_group_name
  description = "Allow Traffic for Dev environment"
  vpc_id      = var.vpc_id # Pass id dynamically
  tags = {
    Name        = "Sigmatic-Dev-SecurityGroup"
    Environment = "Development"
  }

  ingress = {
    description  = "Allow HTTPS traffic"
    from_port    = 443
    to_port      = 443
    protocol     = "tcp"
    cidir_blocks = ["0.0.0.0/0"]
  }

}