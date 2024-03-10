



resource "aws_lambda_function" "lambda" {
  function_name = var.function-name
  handler      = var.handler
  runtime      = var.runtime
  filename     = var.filename
  role         = var.role
  environment {
    variables = {
      key1 = "value1"
      key2 = "value2"
    }
  }
}



