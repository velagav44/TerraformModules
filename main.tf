module "resource_group" {
  source            = "./modules/ResourceGroup"
  group_name        = "Sigmatic-Dev-Resource-Group"
  group_description = "AI-IOT Platform for Surgery Center Optimization"
  environment       = "Development"
  group_tags = {
    Project     = "AI-IoT Platform"
    Environment = "Development"
    Region      = "us-east-2"
    Name        = "Sigmatic-Dev-Resource-Group"
  }
}

module "vpc" {
  source         = "./modules/Vpc"
  vpc_cidr_block = "10.0.0.0/16"
}


module "subnet" {
  source            = "./modules/Subnet"
  vpc_id            = module.vpc.vpc_id
  subnet_cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}


module "securitygroup" {
  source              = "./modules/SecurityGroup"
  security_group_name = "Sigmatic-Dev-SecurityGroup"
  vpc_id              = module.vpc.vpc_id
}


