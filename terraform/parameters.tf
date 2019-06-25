resource "aws_ssm_parameter" "table_name" {
  name = "/big-mouth-${var.my_name}/${var.stage}/table_name"
  type = "String"
  value = "${aws_dynamodb_table.restaurants_table.name}"
}

resource "aws_ssm_parameter" "url" {
  name = "/big-mouth-${var.my_name}/${var.stage}/url"
  type = "String"
  value = "${aws_api_gateway_stage.stage.invoke_url}"
}