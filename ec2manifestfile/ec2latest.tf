#Terraform block
terraform {
  required_version = "~>1.8.5"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
}
#Provider Block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

#Resource Block
 resource "aws_instance" "maheshec2" {
  #availability_zone = "ap-south-1a"
   availability_zone = "ap-south-1b"
   ami = "ami-00fa32593b478ad6e"
   key_name = "terraform-keypair"
   instance_type = "t2.micro"
   tags = {
    "Name" = "maheshec2"
 }
  lifecycle {
   create_before_destroy = "true"
  }
}
