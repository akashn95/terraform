resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public" {
  vpc_id	= aws_vpc.main.id
  cidr_block	= "10.0.1.0/24"
  availability_zone = "ap-south-1a"  
  tags = {
    Name = "Public"
  }
}

resource "aws_subnet" "private" {
  vpc_id        = aws_vpc.main.id
  cidr_block    = "10.0.2.0/24"
  availability_zone = "ap-south-1a"  
  tags = {
    Name = "Private"
  }
}


