variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c2b8ca1dad447f8a" # Amazon Linux 2 in us-east-1
}

variable "key_name" {
  description = "Name of your existing AWS Key Pair"
  type        = string
}