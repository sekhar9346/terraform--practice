#Another provider alias 
provider "aws" {
  region = "us-east-1"
  alias = "provider2"
}

resource "aws_s3_bucket" "test" {
  bucket = "lkkjhtr"

}
resource "aws_s3_bucket" "test2" {
  bucket = "wqryewqrue"
  provider = aws.provider2  #provider.value of alias
  
}