#Provider block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}
# List of bucket names to be created
variable "bucket_names" {
  description = "List of S3 bucket names"
  type        = list(string)
  default     = ["maheshbuddipammukushi-1", "maheshbuddipammukushi-2", "maheshbuddipammukushi-3"] 
}
