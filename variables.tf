
variable "region" {
  type = string
  default = "us-east-2"
}

variable "image_id" {
  type = string
  default = "ami-922914f7"
}

variable "mactype" {
  type = string
  default = "t2.micro"
}

variable "ec2_instance_port" {
  type = number
  default = 80
}

