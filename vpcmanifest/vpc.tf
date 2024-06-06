#Create vpc
resource "aws_vpc" "maheshvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "maheshvpc"
  }
}
#Createa subnets
resource "aws_subnet" "maheshsubnet" {
  vpc_id = aws_vpc.maheshvpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "maheshsubnet"
  }
}
#Create Internetgateway
resource "aws_internet_gateway" "maheshIGW" {
  vpc_id = aws_vpc.maheshvpc.id
  tags = {
    "Name" = "maheshIGW"
  }
}
#Create Route Table
resource "aws_route_table" "maheshRT" {
  vpc_id = aws_vpc.maheshvpc.id
  tags = {
    "Name" = "maheshRT"
  }
}
#Create Route in Route Table for Internet access
resource "aws_route" "maheshroute" {
  route_table_id = aws_route_table.maheshRT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.maheshIGW.id
}
#Associate the route table with the subnet
resource "aws_route_table_association" "maheshRTSassocite" {
    route_table_id = aws_route_table.maheshRT.id
    subnet_id = aws_subnet.maheshsubnet.id
}
#Creata a SECURITY GROUP
resource "aws_security_group" "maheshSG" {
    name = "maheshSG"
    description = "Mahesh security Group"
    vpc_id = aws_vpc.maheshvpc.id
    tags = {
      "Name" = "maheshSG"
    }
  #Specify inbound rule for port 22
  ingress {
    description = "Allow port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #Specify Ibound rule for port 80
  ingress {
    description = "Allow port 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #Specify outbound Rule
  egress {
    description = "Allow all outbound traffic"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}







