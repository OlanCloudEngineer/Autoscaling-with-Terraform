terraform {
    backend "s3" {
    region = "us-east-2"
    encrypt = true
    bucket = "olancloudengineer-s3"
    key = "terraform.tfstate"
    dynamodb_table = "olanlocktable"
  }
}