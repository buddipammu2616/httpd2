#Resource Block
resource "aws_s3_bucket" "buddipammukushi" {
    bucket = "buddipammukushi"
    count = 3
    tags = {
      "Name" = "buddipammukushi-${count.index}"
    }
}
