provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "buddipammukushi" {
  for_each = var.s3_buckets

  bucket = buddipammukushi
  #acl    = each.value.acl

  tags = {
    "Name" = each.value.buddipammukushi
  }
}