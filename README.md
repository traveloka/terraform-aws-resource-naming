terraform-aws-resource-naming
=============================
For most of the resources, AWS does not allow us to create multiple resources with the same name. That is the reason why we need to make them unique.

This module will help you to generate unique resource name by adding `random_id` value added as suffix to the name prefix you specified. Not just adding, but this module will also calculate how many random characters should be added to the prefix so it will not exceed maximum character allowed from AWS.

NOTES: 
* If character length of your name prefix already exceed maximum character allowed from AWS, this module will not do anything about it. Executing `terraform apply` will most likely to fail.


Usage
-----
You need to know what resource you want to provision and how the naming convention is. Then provide the information to this module's variables.

To understand better on how to implement this module, you can go into `examples` folder and try them.


Examples
--------
* [Autoscaling Policy Example](https://github.com/traveloka/terraform-aws-resource-naming/tree/master/examples/autoscaling-policy-example)
* [PostgreSQL Parameter Group](https://github.com/traveloka/terraform-aws-resource-naming/tree/master/examples/postgres-parameter-group)


Supported Resources
-------------------
* autoscaling_group
* autoscaling_policy
* autoscaling_schedule
* cloudwatch_event_rule
* cloudwatch_log_group
* cloudwatch_metric_alarm
* codebuild_project
* codecommit_repository
* codepipeline
* db_instance
* db_parameter_group
* dynamodb_table
* ecr_repository
* ecs_cluster
* ecs_service
* ecs_task_definition
* elasticache_cluster
* elasticache_parameter_group
* elasticsearch_domain
* iam_instance_profile
* iam_role
* instance
* key_pair
* kinesis_firehose_delivery_stream
* lambda_function
* launch_configuration
* lb
* lb_target_group
* s3_bucket
* security_group
* sns_topic
* sqs_queue
* waf_byte_match_set
* waf_geo_match_set
* waf_ipset
* waf_rate_based_rule
* waf_regex_match_set
* waf_regex_pattern_set
* waf_rule
* waf_rule_group
* waf_size_constraint_set
* waf_sql_injection_match_set
* waf_web_acl
* waf_xss_match_set
* wafregional_byte_match_set
* wafregional_geo_match_set
* wafregional_ipset
* wafregional_rate_based_rule
* wafregional_regex_match_set
* wafregional_regex_pattern_set
* wafregional_rule
* wafregional_rule_group
* wafregional_size_constraint_set
* wafregional_sql_injection_match_set
* wafregional_web_acl
* wafregional_xss_match_set


Contributing
------------
Can not see the resource you want to provision on the list above? Open [CONTRIBUTING](CONTRIBUTING.md) to learn how to add it by yourself!


Terraform Version
-----------------
This module was originally created using Terraform 0.11.6.
Terraform version 0.11.6 or newer is required to use this module.


Authors
-------
* [Rafi Kurnia Putra](https://github.com/rafikurnia)


License
-------
Apache 2 Licensed. See LICENSE for full details.
