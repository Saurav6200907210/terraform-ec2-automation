# // create a ec2 instance using manual ami id and instance type
# provider "aws" {
#   region = "ap-south-1"
# }
# resource "aws_instance" "my_ec2" {
#     ami ="ami-05d2d839d4f73aafb"
#     instance_type = "t2.micro"
#     tags = {
#         Name = "MyFirstTerraformEC2"
#     }
# }

// create a ec2 instance using data source to fetch latest ami id and instance type
# variables 
provider "aws" {
  region = var.aws_region
}

data "aws_ami" "amazon_linux" {
  most_recent = true // ami ka letest version dega 
  owners = ["amazon"] // amazon ke official ami ko filter karega

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "my_ec2" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
  
}