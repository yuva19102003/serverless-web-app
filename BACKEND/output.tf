


# this output.tf will display the information

#--------------------------------------------------------------------------------------------------

output "dynamodb-table-hash-key" {
  value = module.dynamodb.dynamodb-table-hash-key
}


output "dynamodb-table-name" {
  value = module.dynamodb.dynamodb-table-name
}

output "lambda-id" {
  value = module.lambda.lambda-id
}

output "lambda-arn" {
  value = module.lambda.lambda-arn
}
