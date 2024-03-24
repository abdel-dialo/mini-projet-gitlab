resource "aws_eip" "my_eip" {
  domain   = "vpc"
  provisioner "local-exec" {
    command = "echo PUBLIC_IP: ${self.public_ip}  > ip_ec2.txt"
  }
 
}

