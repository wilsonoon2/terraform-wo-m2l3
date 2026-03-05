
variable "env" {
description= "Environment name"
type = string
default = "dev"
}

variable "instance_type" {
    description = "EC2 Instance type"
    type = string
    default = "t2.micro"
  
}
