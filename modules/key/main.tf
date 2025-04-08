resource "tls_private_key" "tls-privatekey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.tls-privatekey.public_key_openssh

   tags = {
    Name        = "Sigmatic-EC2-Key"
    Environment = "Development"
  }
  
}

resource "local_file" "private_key" {
  filename        = "${path.module}/my-terraform-key.pem"
  content         = tls_private_key.tls-privatekey.private_key_pem
  file_permission = "0400"
}
