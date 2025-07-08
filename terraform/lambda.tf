resource "aws_lambda_permission" "apigw_invoke_create_item" {
  statement_id  = "AllowAPIGatewayInvokeCreateItem"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.create_item.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}

resource "aws_lambda_permission" "apigw_invoke_get_item" {
  statement_id  = "AllowAPIGatewayInvokeGetItem"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.get_item.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}

resource "aws_lambda_permission" "apigw_invoke_delete_item" {
  statement_id  = "AllowAPIGatewayInvokeDeleteItem"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.delete_item.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}

resource "aws_lambda_permission" "apigw_invoke_get_items" {
  statement_id  = "AllowAPIGatewayInvokeGetItems"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.get_items.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}

resource "aws_lambda_permission" "apigw_invoke_update_item" {
  statement_id  = "AllowAPIGatewayInvokeUpdateItem"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.update_item.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}


resource "aws_lambda_function" "create_item" {
  function_name = "create-item-function"
  filename      = "${path.module}/../lambda/create_item.zip"
  handler       = "create_item.lambda_handler"
  runtime       = "python3.10"
  role          = aws_iam_role.lambda_exec_role.arn

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.items_table.name
    }
  }
}

resource "aws_lambda_function" "get_item" {
  function_name = "get-item-function"
  filename      = "${path.module}/../lambda/get_item.zip"
  handler       = "get_item.lambda_handler"
  runtime       = "python3.10"
  role          = aws_iam_role.lambda_exec_role.arn

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.items_table.name
    }
  }
}

resource "aws_lambda_function" "delete_item" {
  function_name = "delete-item-function"
  filename      = "${path.module}/../lambda/delete_item.zip"
  handler       = "delete_item.lambda_handler"
  runtime       = "python3.10"
  role          = aws_iam_role.lambda_exec_role.arn

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.items_table.name
    }
  }
}

resource "aws_lambda_function" "get_items" {
  function_name = "get-items-function"
  filename      = "${path.module}/../lambda/get_items.zip"
  handler       = "get_items.lambda_handler"
  runtime       = "python3.10"
  role          = aws_iam_role.lambda_exec_role.arn

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.items_table.name
    }
  }
}

resource "aws_lambda_function" "update_item" {
  function_name = "update-item-function"
  filename      = "${path.module}/../lambda/update_item.zip"
  handler       = "update_item.lambda_handler"
  runtime       = "python3.10"
  role          = aws_iam_role.lambda_exec_role.arn

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.items_table.name
    }
  }
}
