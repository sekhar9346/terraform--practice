resource "aws_instance" "test" {
    ami = "ami-0440d3b780d96b29d"
    instance_type = "t2.micro"
    availability_zone = "us-east-1"
    subnet_id = "subnet-042efb81ca455e17a"
    key_name = "keyname"
    
  tags = {
    Name = "sekhar"
  }
}