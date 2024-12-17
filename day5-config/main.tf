
resource "aws_instance" "dev" {
    ami = "ami-04bd4a6a67aa8e86e"
    instance_type = "t2.micro"
    # key_name = var.key_name
    # subnet_id = aws_subnet.dev.id
    # security_groups = [aws_security_group.allow_tls.id]
    tags = {
      Name = "dev-ec2"
    }
}
