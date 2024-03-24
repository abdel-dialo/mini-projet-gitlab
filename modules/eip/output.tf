output "aws_eip_id" {
    value = aws_eip.my_eip.id
}

output "ec2_my_public_ip" {
    value = aws_eip.my_eip.public_ip
}