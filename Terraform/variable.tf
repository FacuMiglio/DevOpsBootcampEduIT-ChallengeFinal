locals {
  common_tags = {
    Terraform = "true"
    Enviroment = var.env
    Owner = "FacuM"
    Project = "${var.app}-facum"   
  }
}

variable "app" {

}
variable "env" {

}
variable "ami" {

}
variable "instance_type" {
    
}