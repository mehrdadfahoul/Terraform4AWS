
variable "aws_region" {
    description = "Region you AWS account"
    type = string
    default = "us-east-1"
}

variable "ami_id" {
    description = "Your AMI ID"
    type = string
    default = "ami-0c0033445g" # please replace the ami id in aws account and region
}

variable "instance_type" {
    description = "Your Instance type"
    type = string
    default = "t2.micro" #this instance for FreeTire account
}

variable "instance_name" {
    description = "Your Instance name"
    type = string
    default = "MyTerraformInstancename"
}

variable "environment" {
    description = "Environmet tag (dev, test ...)"
    type = string
    default = "dev"
  
}