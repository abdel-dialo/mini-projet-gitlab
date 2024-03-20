resource "aws_ebs_volume" "ebs_mini_projet" {
  availability_zone = var.availability_zone
  size              = var.size
  tags = var.ebs_tag
}