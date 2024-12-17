resource "aws_instance" "dev" {
    ami = "ami-038bba9a164eb3dc1"
    instance_type = "t2.micro"
    # key_name = var.key_name
    # subnet_id = aws_subnet.dev.id
    # security_groups = [aws_security_group.allow_tls.id]
    tags = {
      Name = "dev_ec2"
}
}