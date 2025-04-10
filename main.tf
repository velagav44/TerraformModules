module "key" {
  source = "./modules/key"
}


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
  availability_zone = "us-east-2a"
}


module "internetgateway" {
  source    = "./modules/InternetGateway"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
}


module "securitygroup" {
  source              = "./modules/SecurityGroup"
  security_group_name = "Sigmatic-Dev-SecurityGroup"
  vpc_id              = module.vpc.vpc_id
}

module "EC2" {
  source = "./modules/Ec2"
  //RedHat Enterprise Linux 9 image
  ami               = "ami-0f6c1051253397fef"
 // ami               = "123"
  ec2-instance-type = "g4dn.2xlarge" // 8 vpcus, 32 Gib
  tenancy-type      = "dedicated"
  volume_size       = 225
  volume_type       = "gp3"
  subnet_id         = module.subnet.subnet_id
  secuitygroup_id   = module.securitygroup.security_group_id
  key_name          = module.key.key_pair_name
}

/*
module "IotCore" {
  source = "./modules/IotCore"
}
*/


