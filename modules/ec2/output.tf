output "ec2_instance_id" {
    value = aws_instance.my_ec2_instance.id
}

output "ec2_avaibility_zone" {
    value = aws_instance.my_ec2_instance.availability_zone
}

output "ec2_public_ip" {
    value = aws_instance.my_ec2_instance.public_ip
  
}
