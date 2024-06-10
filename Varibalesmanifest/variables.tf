#Create Input variables
variable "aws_region" {
  description = "Region in Which AWS resources to be created"
  type = string
  default = "ap-south-1"
}
variable "ec2_ami_id" {
    description = "Ami Id in Which Aws Resources to be cretaed"
    type = string
    default = "ami-00fa32593b478ad6e"
}
variable "ec2_instance_count" {
  description = "Ec2 instance count"
  type = number
  default = 1
}
variable "aws_instance_type" {
  description = "AWS instance type"
  type = string
}