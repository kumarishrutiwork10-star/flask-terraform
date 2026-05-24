variable "ami_id" {
  description = "Ubuntu 22.04 AMI for ap-south-1"
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "key_name" {
  description = "Your EC2 key pair name"
  default     = "testpem"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}