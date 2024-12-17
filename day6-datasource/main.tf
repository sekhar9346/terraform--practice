



provider "aws" {
  
}
data "aws_ami" "amzlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

# data "aws_subnet" "test" {
#     id ="subnet-07c46f798193db695"
  
# }
data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["dev_subnet"] # insert value here
  }
}


resource "aws_instance" "dev" {
   ami = "ami-07a4c6232c4e5a0ec"
   instance_type ="t2.micro"
   key_name = "keypair"
   subnet_id = data.aws_subnet.selected.id
 
}


   