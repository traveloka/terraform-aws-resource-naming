locals {
  service_name = "txtdata"
  cluster_role = "app"
}

module "this" {
  source = "../../"

  name_prefix   = "${local.service_name}-${local.cluster_role}"
  resource_type = "autoscaling_policy"

  keepers = {
    FirstKeeper  = "TestValue"
    SecondKeeper = "TestValue2"
  }
}
