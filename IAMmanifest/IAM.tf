#Provider Block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

resource "aws_iam_user" "buddipammukushi_user" {
  name = "buddipammukushi_user"
  #path = "/"
}