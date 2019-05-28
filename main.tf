locals {
  # Randomly generated hexadecimal value should not exceed 16 characters.
  max_byte_length = 8

  # Remove trailing dash in case the user inputted one.
  # Example:
  # * var.name_prefix = "txtdata-app"    -->  prefix = "txtdata-app-"
  # * var.name_prefix = "txtdata-app-"   -->  prefix = "txtdata-app-"
  # * var.name_prefix = "txtdata-app--"  -->  prefix = "txtdata-app--"   
  prefix = "${substr(var.name_prefix, -1, 1) == "-" ? substr(var.name_prefix, 0, length(var.name_prefix)-1) : var.name_prefix}-"

  prefix_length                 = "${length(local.prefix)}"
  resource_max_character_length = "${lookup(local.max_character_length, var.resource_type, 0)}"

  random_max_byte_length = "${(local.resource_max_character_length - length(local.prefix)) / 2}"
  random_byte_length     = "${min(local.max_byte_length, local.random_max_byte_length)}"
}

# Null Provider. This module was created on 2018/04/10
provider "null" {
  version = ">= 1.0.0, < 3.0.0"
}

# Random Provider. This module was created on 2018/04/10
provider "random" {
  version = ">= 1.2.0, < 3.0.0"
}

# Throws error when resource_type is not suppported by the module yet
resource "null_resource" "unsupported_resource_type" {
  count                                                                                           = "${local.resource_max_character_length == 0 ? 1 : 0}"
  "\n\nCurrently supported resource types: \n* ${join("\n* ", keys(local.max_character_length))}" = true
}

# Provides random id in hex format
resource "random_id" "this" {
  prefix      = "${local.prefix}"
  byte_length = "${local.random_byte_length}"
  keepers     = "${var.keepers}"
}
