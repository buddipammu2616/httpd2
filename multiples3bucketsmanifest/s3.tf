#Resource Block
resource "aws_s3_bucket" "buddipammu" {
    bucket = "buddipammukushi"
    count = 3
    tags = {
      "Name" = "buddipammukushi-${count.index}"
    }
}
