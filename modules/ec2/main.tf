data "aws_ami" "my_aws_ami" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  
  
}

resource "aws_instance" "my_ec2_instance" {
  ami             = data.aws_ami.my_aws_ami.id
  instance_type   = var.instancetype
  key_name        = "gitlab-ci"
  tags            = var.ec2_common_tag  
  security_groups = var.security_groups

  connection {
    type        = "ssh"
    user = "ubuntu"
    private_key = file("${var.PUBLIC_KEY}")
    
    
    host        = self.public_ip
    timeout = "1m"
  }
  
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo curl -fsSL https://get.docker.com -o get-docker.sh",
      "sudo sh get-docker.sh",
      "sudo service docker start",
      "sudo chkconfig docker on",
      "sudo usermod -aG docker ubuntu",
      "sudo docker --version",
      "exit"
    ]
  }

 
}