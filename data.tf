data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"]
}

data "aws_vpc" "selected" {
  filter {
    name= "tag:Name"
    values =["default-vpc"]
  }
}

data "aws_subnets" "example" {
  filter {
    name ="vpc-id"
    values = [data.aws_vpc.selected.id] # return list of subnes in the VPC    
  }
}
