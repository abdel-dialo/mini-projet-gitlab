variable "instancetype" {
 type = string
 description = "aws instance type"
 default= "t2.nano"
 }

 variable "ec2_common_tag" {
   type = map
   description = "instance tag"
   default = {
    Name= "devops-Name"
   }

 }
 variable "security_groups" {}
 variable "PUBLIC_KEY" {}
  
   

