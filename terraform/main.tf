provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  skip_region_validation      = true
}

module "network" {
  source = "github.com/Luci-Edu/terraform-aws-vpc-auy1105-grupo-5?ref=v1.0.0"

  vpc_name             = "AUY1105-grupo5-vpc"
  vpc_cidr             = "10.1.0.0/16"
  public_subnet_cidrs  = ["10.1.1.0/24"]
  private_subnet_cidrs = ["10.1.10.0/24"]
  availability_zones   = ["us-east-1a"]

  tags = {
    Proyecto = "AUY1105"
    Grupo    = "5"
  }
}

module "compute" {
  source = "github.com/Luci-Edu/terraform-aws-ec2-auy1105-grupo-5?ref=v1.0.0"

  instance_name = "AUY1105-grupo5-ec2"
  instance_type = "t2.micro"
  subnet_id     = module.network.public_subnet_ids[0]
  vpc_id        = module.network.vpc_id
  environment   = "dev"
  allowed_ports = [22, 80]

  tags = {
    Proyecto = "AUY1105"
    Grupo    = "5"
  }
}

module "storage" {
  source = "github.com/Luci-Edu/terraform-aws-s3-auy1105-grupo-5?ref=v1.0.0"

  bucket_name        = "auy1105-grupo5-bucket-dev"
  environment        = "dev"
  versioning_enabled = true

  tags = {
    Proyecto = "AUY1105"
    Grupo    = "5"
  }
}
