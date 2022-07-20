# create S3 bucket

resource "aws_s3_bucket" "B1" {
  bucket = "jarvisbuckk"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

