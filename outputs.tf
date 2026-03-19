# output "instance_public_ip" {
#   value = aws_instance.my_ec2.public_ip
# }

//local values and conditional expression

# output "instance_name_tag" {
#   value = local.name_tag
# }

# depends on 
output "instance_name" {
  value = aws_s3_bucket.my-bucket.id
}

