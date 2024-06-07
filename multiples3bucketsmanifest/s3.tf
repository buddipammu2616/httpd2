#Provider block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}
# List of bucket names to be created
variable "bucket_names" {
  description = "List of S3 bucket names"
  type        = list(string)
  default     = ["bucket-1", "bucket-2", "bucket-3"] 
}
#Resource block
# Create multiple S3 buckets
resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.bucket_names)

  bucket = each.key
}