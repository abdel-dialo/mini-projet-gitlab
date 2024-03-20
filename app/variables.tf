variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

variable  "AWS_DEFAULT_REGION" {
type = string
default = "us-east-1"

}

variable "security_groups" {
    type = list
   default = ["sg_abdoul_app"]
   
 }

variable "PUBLIC_KEY" {}
