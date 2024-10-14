resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}