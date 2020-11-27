resource "aws_s3_bucket" "demo" {
  bucket = "${var.project}-demo-${var.environment}"
}

resource "aws_s3_bucket_object" "tutorial-s3" {
  bucket = aws_s3_bucket.demo.bucket
  key = "demo.txt"
  source = "data/demo.txt"
  acl = "public-read"
}
