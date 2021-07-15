# terraform-aws-resource-naming

[![Terraform Version](https://img.shields.io/badge/Terraform%20Version->=0.11.6,<0.13.0-blue.svg)](https://releases.hashicorp.com/terraform/)
[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-resource-naming.svg)](https://github.com/traveloka/terraform-aws-resource-naming/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-resource-naming.svg)](https://github.com/traveloka/terraform-aws-resource-naming/commits/master)
[![Issues](https://img.shields.io/github/issues/traveloka/terraform-aws-resource-naming.svg)](https://github.com/traveloka/terraform-aws-resource-naming/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/traveloka/terraform-aws-resource-naming.svg)](https://github.com/traveloka/terraform-aws-resource-naming/pulls)
[![License](https://img.shields.io/github/license/traveloka/terraform-aws-resource-naming.svg)](https://github.com/traveloka/terraform-aws-resource-naming/blob/master/LICENSE)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

## Table of Content

- [terraform-aws-resource-naming](#terraform-aws-resource-naming)
  - [Table of Content](#table-of-content)
  - [Prerequisites](#prerequisites)
  - [Quick Start](#quick-start)
    - [Usage](#usage)
    - [Examples](#examples)
  - [Module Definition](#module-definition)
    - [Providers](#providers)
    - [Inputs](#inputs)
    - [Outputs](#outputs)
  - [Dependencies](#dependencies)
  - [Contributing](#contributing)
  - [License](#license)

## Prerequisites

- [Terraform](https://releases.hashicorp.com/terraform/)
    - This module was created using Terraform 0.11.6 on 2018/04/10
    - The latest stable version of Terraform which this module tested working is Terraform 1.0.2 on 2021/07/15

## Quick Start

For most of the resources, AWS does not allow us to create multiple resources with the same name. That is the reason why we need to make them unique.

This module will help you to generate a unique resource name by adding `random_id` value as a suffix to the name prefix you specified. Not just adding, but this module will also calculate how many random characters should be added to the prefix so it will not exceed maximum character allowed from AWS. Check the list below for AWS services supported by this module.

<details><summary>Supported resources:</summary>
<p>

- autoscaling_group
- autoscaling_policy
- autoscaling_schedule
- cloudwatch_event_rule
- cloudwatch_log_group
- cloudwatch_metric_alarm
- codebuild_project
- codecommit_repository
- codepipeline
- db_instance
- db_parameter_group
- dynamodb_table
- ecr_repository
- ecs_cluster
- ecs_service
- ecs_task_definition
- elasticache_cluster
- elasticache_parameter_group
- elasticsearch_domain
- iam_instance_profile
- iam_role
- instance
- key_pair
- kinesis_firehose_delivery_stream
- lambda_function
- launch_configuration
- lb
- lb_target_group
- s3_bucket
- secretsmanager_secret
- security_group
- sns_topic
- sqs_queue
- waf_byte_match_set
- waf_geo_match_set
- waf_ipset
- waf_rate_based_rule
- waf_regex_match_set
- waf_regex_pattern_set
- waf_rule
- waf_rule_group
- waf_size_constraint_set
- waf_sql_injection_match_set
- waf_web_acl
- waf_xss_match_set
- wafregional_byte_match_set
- wafregional_geo_match_set
- wafregional_ipset
- wafregional_rate_based_rule
- wafregional_regex_match_set
- wafregional_regex_pattern_set
- wafregional_rule
- wafregional_rule_group
- wafregional_size_constraint_set
- wafregional_sql_injection_match_set
- wafregional_web_acl
- wafregional_xss_match_set

</p>
</details>

**Notes:**
- If character length of your name prefix already exceeds maximum character allowed from AWS, this module will not do anything about it. Executing `terraform apply` will most likely to fail.


### Usage

You need to know what resource you want to provision (`resource_type`) and what the name prefix (`name_prefix`) is. Then provide the information to this module's variables:

```hcl
provider "random" {
  version = ">= 1.2.0, < 3.0.0"
}

module "aws-resource-naming_lambda_role" {
  source        = "github.com/traveloka/terraform-aws-resource-naming"
  version       = "v0.17.1"
  name_prefix   = "LambdaRole_DailyScheduler"
  resource_type = "iam_role"
}

resource "aws_iam_role" "lambda_role" {
  name        = "${module.aws-resource-naming_lambda_role.name}"
  path        = "/lambda-role/"                                       
  description = "Lambda Role for Daily Scheduler"

  assume_role_policy   = "${data.aws_iam_policy_document.lambda_assume_role_policy.json}"
}

data "aws_iam_policy_document" "lambda_assume_role_policy" {
  statement = {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"

    principals = {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}
```

To understand better on how to implement this module, you can go into `examples` folder and try them.

### Examples

- [Autoscaling Policy Example](https://github.com/traveloka/terraform-aws-resource-naming/tree/master/examples/autoscaling-policy-example)
- [PostgreSQL Parameter Group](https://github.com/traveloka/terraform-aws-resource-naming/tree/master/examples/postgres-parameter-group)

## Module Definition

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Arbitrary map of values that, when changed, will trigger a new id to be generated. | `map(any)` | `{}` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Arbitrary string to prefix the output value with. Adding trailing dash/hypen will not give any effect, it will be added by the module automatically. | `string` | n/a | yes |
| <a name="input_resource_type"></a> [resource\_type](#input\_resource\_type) | AWS Resource type that the name will be generated by this module. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The generated name with random\_id presented in padded hexadecimal digits as suffix. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Dependencies

This module does not have any dependencies to other modules.

## Contributing

Can not see the resource you want to provision on the list above? Open [CONTRIBUTING](CONTRIBUTING.md) to learn how to add it by yourself!

## License

Apache 2 Licensed. See LICENSE for full details.
