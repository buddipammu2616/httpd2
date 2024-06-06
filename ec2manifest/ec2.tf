#Create a EC2 instance
resource "aws_instance" "maheshec2" {
    ami = "ami-00fa32593b478ad6e"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.maheshsubnet.id
    key_name = "terraform-keypair"
    vpc_security_group_ids = [ aws_security_group.maheshSG ]
    tags = {
      "Name" = "maheshec2"
    }
}