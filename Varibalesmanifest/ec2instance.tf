# create ec2 instance
resource "aws_instance" "maheshec2" {
  ami = var.ec2_ami_id
  instance_type = var.aws_instance_type
  key_name = "terraform-keypair"
  count = var.ec2_instance_count
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
    vpc_security_group_ids = [ aws_security_group.mahesh-ssh.id,aws_security_group.mahesh-web.id ]
}


