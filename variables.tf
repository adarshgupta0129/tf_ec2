variable "aws_region" {
  default = "eu-north-1"
}

variable "ami_id" {
  default = "ami-09eb4311cbaecf89f" # Amazon Linux 2 in us-east-1
}

variable "key_name" {
  description = "key_pair_learn_2"
  type        = string
}