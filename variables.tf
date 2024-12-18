variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "organizational_units" {
  description = "List of organizational units"
  type = list(object({
    unit_name = string
  }))
}