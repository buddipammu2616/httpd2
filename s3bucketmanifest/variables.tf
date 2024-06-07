variable "s3_buckets" {
  description = "Map of S3 bucket configurations"
  type = map(object({
    bucket_name = string
    acl         = string
  }))
  default = {
    bucket1 = {
      bucket_name = "my-bucket-1"
      acl         = "public-read"
    }
    bucket2 = {
      bucket_name = "my-bucket-2"
      acl         = "public-read"
    }
  }
}