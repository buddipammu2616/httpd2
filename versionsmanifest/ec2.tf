resource "aws_instance" "maheshec2" {
    ami = "ami-00fa32593b478ad6e"
  instance_type = "t2.micro"
  count = 3
  tags = {
    "Name" = "maheshec2-${count.index}"
  }
}