locals {
  service_name = "txtdata"
  db_engine    = "postgres"
}

module "this" {
  source = "../../"

  name_prefix   = "${local.service_name}-${local.db_engine}"
  resource_type = "db_parameter_group"
}
