variable "group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "group_description" {
  description = "Description of the resource group"
  type        = string
}

variable "environment" {
  description = "Environment filter (e.g., Development, Production)"
  type        = string
}

variable "group_tags" {
  description = "Tags for the resource group"
  type        = map(string)
}
