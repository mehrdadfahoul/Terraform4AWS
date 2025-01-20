variable "aws_region" {
    description = "Region your AWS account"
    type = string
    default = "us-easet-1" #check your location and you can change it
}

variable "mehrdads3bucket" {
  description = "Name of your S3Bucket"
  type = string
}

variable "environment" {
    description = "Tag (prod, dev, ...)"
    type = string
    default = "dev"
  
}