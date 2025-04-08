resource "aws_instance" "my_ec2" {
  ami                    = "ami-07a6f770277670015" 
  instance_type          = "t2.micro"
  //subnet_id              = aws_subnet.public_subnet.id
  //vpc_security_group_ids = [aws_security_group.ssh_sg.id]
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.secuitygroup_id]
  //key_name = aws_key_pair.generated_key.key_name
  key_name = var.key_name
  associate_public_ip_address = true
  
  tags = {
    Name        = "Sigmatic-Dev-Ec2"
    Environment = "Development"
  }
}