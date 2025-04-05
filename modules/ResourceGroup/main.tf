resource "aws_resourcegroups_group" "example_group" {
  name        = var.group_name
  description = var.group_description

  resource_query {
    query = jsonencode({
      ResourceTypeFilters = ["AWS::AllSupported"]
      TagFilters = [
        {
          Key    = "Environment"
          Values = [var.environment]
        }
      ]
    })
  }

  tags = var.group_tags
}
