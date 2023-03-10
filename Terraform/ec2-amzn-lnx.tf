resource "aws_instance" "amazonlinux" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id = module.vpc.public_subnets[0]
    vpc_security_group_ids = [aws_security_group.publica.id]
    key_name = "${var.app}-key"
    user_data = <<EOF
#! /bin/bash
yum update -y
EOF
  tags = {
    Name = "ec2-${var.app}-facum"
  }
}