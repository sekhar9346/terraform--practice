variable "create_bucket" {
  description = "Set to true to create the S3 bucket."
  type        = bool
  default     = true
}
resource "random_string" "suffix" {
  count   = var.create_bucket ? 3 : 0
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "example" {
  count = var.create_bucket ? 3 : 0

  bucket = "my-bucket-${random_string.suffix[count.index].id}"
  acl    = "private"

  tags = {
    Name        = "ConditionalBucket"
    Environment = "sekhar"
  }
}


 variable "create_instance" {
  description = "Set to true to create the EC2 instance."
   type        = bool
   default     = true
}


resource "aws_instance" "example" {
   count         = var.create_instance ? 3 : 0
   ami           = "ami-02141377eee7defb9" # Replace with a valid AMI ID
   instance_type = "t2.micro"

   tags = {
     Name = "sekhar ,chandu,naga"
   }
 }