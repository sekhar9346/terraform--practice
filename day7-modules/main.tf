
resource "aws_instance" "example" {
  ami       	= "ami-ami-04bd4a6a67aa8e86e"
  instance_type = "t2.micro"
  subnet_id 	= "subnet-06bce8f28bd4fe1f1"
  key_name  	= "keyname"
 
  tags = {
	Name = friends
  }
}
