provider "aws" {
  region = "ap-south-1"  # Update with your desired region
}

resource "aws_s3_bucket" "maheshbuddipamukushi-1" {
  bucket = "maheshbuddipammukushi-1"
  #acl    = "private"
}

resource "aws_s3_bucket" "maheshbuddipammukushi-2" {
  bucket = "maheshbuddipammukushi-2"
  #acl    = "private"
}

resource "aws_s3_bucket" "maheshbuddipammukush-3" {
  bucket = "maheshbuddipammukush-3"
  #acl    = "private"
}