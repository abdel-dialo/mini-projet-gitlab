variable "availability_zone" {
    type = string
    description = "ec2 ebs availability_zone"
    default = "us-east-1b"
  
}

variable "size" {
    type = number
    default = 10
}

variable "ebs_tag" {
 type = map
 default = {
    Name="mini-projet_ebs"
 }
  
}
