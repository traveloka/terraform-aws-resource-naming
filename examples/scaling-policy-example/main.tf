locals {
  service_name = "txtdata"
  cluster_role = "app"
  scaling_description = "TTSAvgCPU"

}

module "this" {
  source = "../../"

  name_prefix   = "${local.service_name}-${local.cluster_role}-{local.scaling_description}"
  resource_type = "scaling_policy"

  keepers = {
    FirstKeeper  = "TestValue"
    SecondKeeper = "TestValue2"
  }
}
