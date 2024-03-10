


output "lambda-id" {
    value = aws_lambda_function.lambda.id
}

output "lambda-arn" {
    value = aws_lambda_function.lambda.invoke_arn
}