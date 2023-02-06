#data "aws_ami" "ubuntu" {
#  most_recent = true
#
#  filter {
#    name   = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#  }
#
#  filter {
#    name   = "virtualization-type"
#    values = ["hvm"]
#  }
#
#  owners = ["375491260132"] # Canonical
#}

resource "aws_network_interface" "public" {
  subnet_id   = var.public_subnet
  private_ips = ["10.0.1.5"]

  tags = {
    Name = "private-network-interface"
  }
}

resource "aws_network_interface" "private" {
  subnet_id   = var.private_subnet
  private_ips = ["10.0.2.5"]

  tags = {
    Name = "public-network-interface"
  }
}

#resource "aws_instance" "public" {
#  ami           = "ami-06984ea821ac0a879"
#  instance_type = "t2.micro"
# # key_name	= "terraform"
#
#  network_interface {
#    network_interface_id = aws_network_interface.public.id
#    device_index         = 0
#  }
#
#  tags = {
#    Name = "main-public"
#  }
#}
#
#resource "aws_instance" "private" {
#  ami           = "ami-06984ea821ac0a879"
#  instance_type = "t2.micro"
##  key_name	= "terraform"  
#
#  network_interface {
#    network_interface_id = aws_network_interface.private.id
#    device_index         = 0
#  }
#
#  tags = {
#    Name = "main-private"
#  }
#}
