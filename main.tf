provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "free_tier_ec2" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = var.key_name

  tags = {
    Name = "FreeTierEC2"
  }
}