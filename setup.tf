resource "aws_s3_bucket" "terraform-state-storage-s3" { 
bucket = "olancloudengineer-s3"

versioning {
    # enable with caution, makes deleting S3 buckets tricky
    enabled = true
  }

lifecycle {
    prevent_destroy = false
  }

  tags = {
    name = "S3 Terraform Bucket for Olan"
    proj = "Olan-iac-proj"
    Environment = "prod"
  }

}

# This creates a DynamoDB table for locking the state file    
resource "aws_dynamodb_table" "olanlocktable" {
  name = "olanlocktable"
  hash_key = "LockID"
  read_capacity = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    name = "DynamoDB Terraform State Lock Table"        
    proj = "project-iac"
    env = "prod"
     }

}