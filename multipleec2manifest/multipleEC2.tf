#Terraform block
terraform {
  required_version = "~>1.8.5"
  required_providers {
    aws ={
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
#Resoucre block
resource "aws_instance" "buddipammuec2" {
  ami = "ami-00fa32593b478ad6e"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  count = 3
  tags = {
    "Name" = "buddipammuec2-${count.index}"
  }
}