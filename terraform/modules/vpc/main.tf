# Recurso de Red Principal (VPC)
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "AUY1105-grupo5-vpc"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# Puerta de Enlace a Internet
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "AUY1105-grupo5-igw"
    Environment = var.environment
  }
}

# Subred Publica
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "AUY1105-grupo5-subnet"
  }
}

# Tabla de Ruteo
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "AUY1105-grupo5-public-rt"
  }
}

# Asociacion de Subred Publica
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
