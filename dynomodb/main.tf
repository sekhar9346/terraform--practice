resource "aws_s3_bucket" "name_bucket" {
  bucket = "dewcwecxdwsc"
}

#create dynomoDB
resource "aws_dynamodb_table" "round" {
  name           = "aws_dynomo"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20


  attribute {
    name = "LockID"
    type = "S"
  }
}
