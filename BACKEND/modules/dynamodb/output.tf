

# output of the dynamodb

output "dynamodb-table-name" {
  value = aws_dynamodb_table.dynamodb.name
}

output "dynamodb-table-hash-key" {
  value = aws_dynamodb_table.dynamodb.hash_key
}