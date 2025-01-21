
variable "aws_region" {
    description = "AWS Region"
    type = string
    default = "us-easet-1" #it is related to your Region
}

variable "aws_cidr" {
    description = "CID_Block"
    type = string
    default = 10.0.0.0/24  
}

variable "aws_subnet" {
    description = "Subnet"  
    type = string
    default = 10.0.0.0/24
}

variable "vpc_name" {
    description = "Name of your VPC"
    type = string
    default = "MyVPCname"
}

variable "subnet_name" {
    description = "Name of the Subnet"
    type = string
    default = "Mysubnet"
}
