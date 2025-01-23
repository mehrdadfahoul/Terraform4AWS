
#Create by @mehrdadfahoul
provider "aws" {
  region = var.aws_region
}
#Create Security Group for access SSH port 22
resource "aws_security_group" "SG-ssh" {
    name = "allow ssh port"
    description = "Enable ssh port to access your EC2"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] #Don`t forget if you have Public Ip, it is better to use is it here
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "allow_ssh"
    }
}

#Create a EC2
resource "aws_instance" "my_ec2_instance" {
    ami = var.ami_id #your ami id it is related to your region
    instance_type = var.instance_type #your instance type, for useing FreeTire you should use t2.micro
    vpc_security_group_ids = [aws_security_group.SG-ssh.id]  #for attach to your EC2
    tags = {
      Name = var.instance_name
      Environment = var.environment
    }
}

output "instance_id" {
    description = "Your Instance Id"
    value = aws_instance.my_ec2_instance.id
}
output "Ec2-Public_ip_address" {
    description = "Your Ec2 Instance Ip adderess"
    value = aws_instance.my_ec2_instance.public_ip
}
output "Instance_state" {
    description = "Your instance status"
    value = aws_instance.my_ec2_instance.instance_state
}
