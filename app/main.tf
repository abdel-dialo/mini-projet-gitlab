
provider "aws" {
  region     = var.AWS_DEFAULT_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

module "sg" {
  source = "../modules/sg"
}

module "webapp" {
  source = "../modules/ec2"

  instancetype = "t2.micro"
  ec2_common_tag = {
    Name = "ec2-webapp"
  }
  PUBLIC_KEY      = var.PUBLIC_KEY
  security_groups = ["${module.sg.mini_projet_sg}"]
  depends_on      = [module.sg]

}

module "eip" {
  source     = "../modules/eip"
  depends_on = [module.webapp]
}

module "ebs" {
  source            = "../modules/ebs"
  size              = 25
  availability_zone = module.webapp.ec2_avaibility_zone
  depends_on        = [module.webapp]
}


resource "aws_volume_attachment" "volume_mini_projet" {
  device_name = "/dev/sdh"
  volume_id   = module.ebs.ebs_mini_projet_id
  instance_id = module.webapp.ec2_instance_id
  depends_on  = [module.webapp, module.ebs]
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.webapp.ec2_instance_id
  allocation_id = module.eip.aws_eip_id
  depends_on    = [module.webapp, module.eip]

}