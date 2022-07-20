# create S3 bucket

resource "aws_s3_bucket" "B1" {
  bucket = "jarvisbuckk"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

##################################################################################################

resource "aws_s3_bucket" "B1" {
  bucket = "jarvisbuckk"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.B1.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [""]
    }

    actions = [
      "s3:GetObject",
      "s3:ListBucket",
    ]

    resources = [
      aws_s3_bucket.example.arn,
      "${aws_s3_bucket.example.arn}/*",
    ]
  }
}
