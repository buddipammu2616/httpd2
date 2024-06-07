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
locals {
  iam_users = [
    "mahesh1",
    "Ashvitha2",
    "Yohith3",
    "Manaswi4"
  ]
}

# Create IAM users using for_each meta-argument
resource "aws_iam_user" "user" {
  for_each = toset(local.iam_users)

  name = each.key
}