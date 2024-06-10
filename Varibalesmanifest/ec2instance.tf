# create ec2 instance
resource "aws_instance" "maheshec2" {
  ami = "ami-00fa32593b478ad6e"
  instance_type = "t3.micro"
  key_name = "terraform-keypair"
  count = 1
  user_data = <<-EOF
  #!/bin/bash
  sudo yum update -y
  sudo yum install httpd -y
  sudo systemctl enable httpd
  sudo systemctl start httpd
echo "<h1> Hi mahesh </h1>"
EOF
tags = {
  "Name" = "maheshec2"
}
}


