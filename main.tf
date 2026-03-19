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
# provider "aws" {
#   region = var.aws_region
# }

# data "aws_ami" "amazon_linux" {
#   most_recent = true // ami ka letest version dega 
#   owners = ["amazon"] // amazon ke official ami ko filter karega

#   filter {
#     name = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }

# resource "aws_instance" "my_ec2" {
#   ami = data.aws_ami.amazon_linux.id
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instance_name
#   }
  
# }

//local values and conditional expression



# provider "aws" {
#   region = var.aws_region
# }

# data "aws_ami" "amazon_linux" {
#   most_recent = true // ami ka letest version dega 
#   owners = ["amazon"] // amazon ke official ami ko filter karega

#   filter {
#     name = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }
# locals {
#    name_tag = var.instance_type == "t3.micro" ? "T3 Micro Instance" : "standard instance"
# }


# resource "aws_instance" "my_ec2" {
#   ami = data.aws_ami.amazon_linux.id
#   instance_type = var.instance_type

#   tags = {
#     Name = local.name_tag
#   }
# }

// Depends on** palhe s3 bucket create hoga fir ec2 iske liye use hota h depends on

# provider "aws" {
#   region = var.aws_region
# }

# data "aws_ami" "amazon_linux" {
#   most_recent = true // ami ka letest version dega 
#   owners = ["amazon"] // amazon ke official ami ko filter karega

#   filter {
#     name = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }

# resource "aws_s3_bucket" "my-bucket" {
#   bucket = var.bucket_name

#   tags = {
#     Name = "Mys3Bucket"
#   }
# }

# resource "aws_instance" "my_ec2" {
#   ami = data.aws_ami.amazon_linux.id
#   instance_type = var.instance_type

#   tags = {
#     Name = var.instance_name
#   }
#   depends_on = [
#     aws_s3_bucket.my-bucket
#   ]
# }
