provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "this" {
  for_each = var.s3_buckets

  bucket = each.value.bucket_name
  #acl    = each.value.acl

  tags = {
    Name = each.value.bucket_name
  }
}