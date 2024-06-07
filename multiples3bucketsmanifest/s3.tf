#Resource Block
resource "aws_s3_bucket" "buddipammu" {
    bucket = "buddipammu"
    tags = {
      "Name" = "buddipammu"
    }
}
