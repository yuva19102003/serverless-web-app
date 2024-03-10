provider "aws" {
  region = "us-east-1"
}

# main.tf for maintaing all resources

#--------------------------------------------------------------------------------------------------

#dynamodb


module "dynamodb" {
  source        = "./modules/dynamodb"
  name          = "contact-us-database"
  hash-key-name = "NAME"
  hash-key-type = "S"
}

resource "aws_dynamodb_table_item" "dynamodb-table-item" {
  table_name = module.dynamodb.dynamodb-table-name
  hash_key   = module.dynamodb.dynamodb-table-hash-key
  item       = <<ITEM
  {
    "NAME": {"S": "ADMIN"},
    "EMAIL": {"S": "yuvaadmin@gmail.com"},
    "PHONE-NUMBER": {"N": "123456789"},
    "MESSAGE": {"S": "HI THIS IS ADMIN"}
  }
  ITEM

}

#--------------------------------------------------------------------------------------------------

# lambda function


data "aws_iam_role" "lambda-role" {
  name = "LambdaRole"
}


data "archive_file" "lambda" {
  type        = "zip"
  source_file = "backend/table.py"
  output_path = "backend/zip/table.zip"
}

module "lambda" {
  source        = "./modules/lambda"
  function-name = "serverless-backend"
  handler       = "table.table_function"
  runtime       = "python3.12"
  filename      = "backend/zip/table.zip"
  role          = data.aws_iam_role.lambda-role.arn
}


#--------------------------------------------------------------------------------------------------

