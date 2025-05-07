provider "aws" {
  region = var.aws_region
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  filter {
    name   = "default-for-az"
    values = ["true"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_instance" "free_tier_ec2" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_name
  subnet_id     = data.aws_subnet.default.id

  tags = {
    Name = "FreeTierEC2"
  }
}