#Create a Elastic IP
resource "aws_eip" "maheshEIP" {
  instance = aws_instance.maheshec2.id
  domain = "vpc"
  #Depends on Meta Argument
 depends_on = [ aws_internet_gateway.maheshIGW ] 
}