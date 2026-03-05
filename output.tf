output "my_vpc_id" {
    value=data.aws_vpc.selected.id
}

output "default_vpc_id" {
    value = data.aws_vpc.selected.id
  
}

output "subnet_ids" {
    value = data.aws_subnets.example.ids
}


output "env" {
    value = var.env
    
}

output "instance_type" {
    value = var.instance_type
}
