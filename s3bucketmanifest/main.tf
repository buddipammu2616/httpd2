provider "aws" {
  region = "ap-south-1"  # Update with your desired region
}

# Define a map variable containing the names of the buckets
variable "bucket_names" {
  type = map(string)
  default = {
    bucket1 = "maheshbuddipammukushimanaswi-1"
    bucket2 = "maheshbuddipammukushimanaswi-2"
    bucket3 = "maheshbuddipammukushimanaswi-3"
  }
}

# Create S3 buckets using for_each
resource "aws_s3_bucket" "maheshbuddipammukushimanaswi" {
  for_each = var.bucket_names

  bucket = each.value
  #acl    = "private"
}