

# this main.tf is for aws dynamodb
#-----------------------------------------------------------------------------------------------------

resource "aws_dynamodb_table" "dynamodb" {

    name = var.name
    billing_mode = "PAY_PER_REQUEST"
    hash_key = var.hash-key-name

    
    attribute {
      name = var.hash-key-name
      type = var.hash-key-type
    }

}
