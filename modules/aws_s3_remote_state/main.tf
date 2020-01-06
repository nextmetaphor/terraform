resource "aws_dynamodb_table" "remote_state_lock" {
  name           = "terraform-state-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "remote_state" {
  bucket        = var.bucket_name
  force_destroy = true
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "remote_state" {
  bucket                  = aws_s3_bucket.remote_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}