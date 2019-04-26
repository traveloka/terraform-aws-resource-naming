terraform-aws-resource-naming
=============================
Terraform module to generate resource name with `random_id` added as suffix.


Usage
-----
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
* codebuild_project
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
You can increase the number of this module's supported resources by adding the information about maximum character allowed for resource naming from AWS.

Open [resources.tf](https://github.com/traveloka/terraform-aws-resource-naming/blob/master/resources.tf) for more information. 

Don't forget to also add the resource that you added to [Supported Resources list](https://github.com/traveloka/terraform-aws-resource-naming#supported-resources)


Terraform Version
-----------------
This module was created using Terraform 0.11.6. 
So to be more safe, Terraform version 0.11.6 or newer is required to use this module.


Authors
-------
* [Rafi Kurnia Putra](https://github.com/rafikurnia)


License
-------
Apache 2 Licensed. See LICENSE for full details.
