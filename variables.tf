variable "aws_region" {
  default = "eu-north-1"
}

variable "ami_id" {
  default = "ami-0fe8bec493a81c7da" # ✅ Amazon Linux 2 in eu-north-1 (Stockholm)
}

variable "key_name" {
  description = "key_pair_learn_2"
  type        = string
}