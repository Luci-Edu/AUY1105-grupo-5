resource "aws_vpc" "main" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_hostnames = true
  tags = { Name = "AUY1105-grupo5-vpc" }
}

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.1.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = { Name = "AUY1105-grupo5-subnet" }
}

resource "aws_security_group" "ec2_sg" {
  name        = "AUY1105-grupo5-sg"
  description = "Permite solo SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "vm" {
  ami                    = "ami-0e2c8ccd4e1ff87e6" 
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  tags = { Name = "AUY1105-grupo5-ec2" }
}
