resource "aws_instance" "my_ec2" {

  ami                         = var.ami
  instance_type               = var.ec2-instance-type
  tenancy                     = var.tenancy-type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.secuitygroup_id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name              = "Sigmatic-Dev-EC2"
    Environment       = "Development"
    ec2-instance-type = "g4dn.2xlarge"
    tenancy-type      = "Dedicated"
    volume_size       = "225"
    volume_type       = "General purpose SSD (gp3)"
  }

  root_block_device {
    volume_size           = var.volume_size
    volume_type           = var.volume_type
    delete_on_termination = true
  }

  //key_name = aws_key_pair.generated_key.key_name
  //ami                    = "ami-0f6c1051253397fef" 
  //instance_type = "t2.micro"
  //subnet_id              = aws_subnet.public_subnet.id
  //vpc_security_group_ids = [aws_security_group.ssh_sg.id]
  //tenancy                     = "dedicated"
}
