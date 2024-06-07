provider "aws" {
  region = "ap-south-1"  # Update with your desired region
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-first-bucket"
  #acl    = "private"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-second-bucket"
  #acl    = "private"
}

resource "aws_s3_bucket" "bucket3" {
  bucket = "my-third-bucket"
  #acl    = "private"
}