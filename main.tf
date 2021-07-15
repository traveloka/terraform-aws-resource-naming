# This module was created using Terraform 0.11.6 on 2018/04/10
# Tested working on Terraform 0.12.0 on 2019/05/28
# Tested working on Terraform >= 0.13.7 and <= 1.0.2  on 2021/07/15
terraform {
  required_version = ">= 0.13.0"
}

locals {
  # Randomly generated hexadecimal value should not exceed 16 characters.
  max_byte_length = 8

  # Remove trailing dash in case the user inputted one.
  # Example:
  # * var.name_prefix = "txtdata-app"    -->  prefix = "txtdata-app-"
  # * var.name_prefix = "txtdata-app-"   -->  prefix = "txtdata-app-"
  # * var.name_prefix = "txtdata-app--"  -->  prefix = "txtdata-app--"   
  prefix = substr(var.name_prefix, -1, 1) == "-" ? substr(var.name_prefix, 0, length(var.name_prefix) - 1) : format("%s-", var.name_prefix)

  prefix_length                 = length(local.prefix)
  resource_max_character_length = lookup(local.max_character_length, var.resource_type, 0)

  random_max_byte_length = floor((local.resource_max_character_length - length(local.prefix)) / 2)
  random_byte_length     = min(local.max_byte_length, local.random_max_byte_length)
}

# Provides random id in hex format
resource "random_id" "this" {
  prefix      = local.prefix
  byte_length = local.random_byte_length
  keepers     = var.keepers
}
