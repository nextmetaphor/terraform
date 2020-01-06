terraform {
  backend "s3" {
    key            = "aws_s3_private/terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
  }
}