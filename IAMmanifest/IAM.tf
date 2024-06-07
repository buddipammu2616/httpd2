#Provider Block
#provider "aws" {
  #region = "ap-south-1"
  #profile = "default"
#}

#resource "aws_iam_user" "buddipammukushi_user" {
  #name = "buddipammukushi_user"
  #path = "/"
#}

provider "aws" {
  region = "ap-south-1"
}

# Define a set of user names
#locals {
  #iam_users = [
   # "mahesh1",
    #"Ashvitha2",
   # "Yohith3",
   # "Manaswi4"
  #]
#}

# Create IAM users using for_each meta-argument
#resource "aws_iam_user" "user" {
  #for_each = toset(local.iam_users)

  #name = each.key
#}

# Specify the provider
#provider "aws" {
  #region = "us-west-2"  # Change this to your preferred region
#}

# Define a list of IAM users to create
variable "iam_user_names" {
  type    = list(string)
  default = ["mahesh1", "mahesh2", "mahesh3"]  # Add more user names as needed
}

# Create IAM users
resource "aws_iam_user" "users" {
  for_each = toset(var.iam_user_names)
  name     = each.key
  path     = "/"
}






























