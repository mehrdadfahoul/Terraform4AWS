# Create By @mehrdadfahoul

provider "aws" {
    region = var.aws_region
}

#VPC create a vpc
resource "aws_vpc" "my_vpc" {
    cidr_block var.aws_cidr
    enable_dns_support =true
    enable_dns_hostnames = true

    tags = {
      Name = var.vpc_name
    }
}

# Subnet
resource "aws_subnet" "my_subnet" {
    vpc_id          =    aws_vpc.my_vpc.id
    cidr_block      =    var.cidr_block
    map_public_ip_on_launch = true

    tags = {
      Name = var.subnet_name
    }
}

output "vpc_id" {
    description = "Id for your VPC"
    value =     aws_vpc.my_vpc.id
}

output "subnet_id" {
    description = "Your subnet ID"
    value = aws_subnet.my_subnet.id
}
