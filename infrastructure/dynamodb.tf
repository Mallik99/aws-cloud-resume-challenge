resource "aws_dynamodb_table" "tf_lock" {
    name = "tf-state-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}

resource "aws_dynamodb_table" "view-count" {
      
}