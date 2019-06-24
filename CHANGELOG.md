## v0.17.0 (Jun 24, 2019)

NOTES:

* This module is now compatible with Terraform 0.12 version. That being said, one can still use this module on previous version of Terraform (0.11). The reason behind that is because the syntax is not using Terraform 0.12's style yet.

## v0.16.1 (May 29, 2019)

ENHANCEMENT:

* Terraform provider version relaxed for preparation to 0.12 compatibility

## v0.16.0 (May 17, 2019)

FEATURES:

* **New Resource:** `cloudwatch_metric_alarm`
* **New Resource:** `instance`

## v0.15.0 (May 17, 2019)

FEATURES:

* **New Resource:** `codecommit_repository`
* **New Resource:** `codepipeline`

## v0.14.0 (May 8, 2019)

FEATURES:

* **New Resource:** `autoscaling_schedule`

## v0.13.0 (Mar 22, 2019)

FEATURES:

* **New Resource:** `kinesis_firehose_delivery_stream`

## v0.12.0 (Mar 19, 2019)

FEATURES:

* **New Resource:** `waf_byte_match_set`
* **New Resource:** `waf_geo_match_set`
* **New Resource:** `waf_ipset`
* **New Resource:** `waf_rate_based_rule`
* **New Resource:** `waf_regex_match_set`
* **New Resource:** `waf_regex_pattern_set`
* **New Resource:** `waf_rule`
* **New Resource:** `waf_rule_group`
* **New Resource:** `waf_size_constraint_set`
* **New Resource:** `waf_sql_injection_match_set`
* **New Resource:** `waf_web_acl`
* **New Resource:** `waf_xss_match_set`
* **New Resource:** `wafregional_byte_match_set`
* **New Resource:** `wafregional_geo_match_set`
* **New Resource:** `wafregional_ipset`
* **New Resource:** `wafregional_rate_based_rule`
* **New Resource:** `wafregional_regex_match_set`
* **New Resource:** `wafregional_regex_pattern_set`
* **New Resource:** `wafregional_rule`
* **New Resource:** `wafregional_rule_group`
* **New Resource:** `wafregional_size_constraint_set`
* **New Resource:** `wafregional_sql_injection_match_set`
* **New Resource:** `wafregional_web_acl`
* **New Resource:** `wafregional_xss_match_set`

## v0.11.0 (Mar 19, 2019)

FEATURES:

* **New Resource:** `ecs_cluster`
* **New Resource:** `ecs_service`
* **New Resource:** `ecs_task_definition`
* **New Resource:** `ecr_repository`

## v0.10.0 (Mar 19, 2019)

FEATURES:

* **New Resource:** `elasticache_parameter_group`

## v0.9.0 (Mar 3, 2019)

FEATURES:

* **New Resource:** `codebuild_project`

## v0.8.0 (Oct 11, 2018)

FEATURES:

* **New Resource:** `key_pair`

## v0.7.1 (May 24, 2018)

FEATURES:

* **BUG FIXES:** validation will always fail if `name_prefix` contains interpolation or data source

## v0.7.0 (May 8, 2018)

FEATURES:

* **New Resource:** `sns_topic`

## v0.6.0 (Apr 16, 2018)

ENHANCEMENTS:

* **New Variable:** `keepers`

## v0.5.0 (Apr 17, 2018)

FEATURES:

* **New Resource:** `autoscaling_group`
* **New Resource:** `launch_configuration`
* **New Resource:** `dynamodb_table`
* **New Resource:** `elasticache_cluster`
* **New Resource:** `elasticsearch_domain`
* **New Resource:** `iam_instance_profile`
* **New Resource:** `sqs_queue`

## v0.4.0 (Apr 16, 2018)

FEATURES:

* **New Resource:** `cloudwatch_event_rule`

## v0.3.0 (Apr 16, 2018)

FEATURES:

* **New Resource:** `lambda_function`

## v0.2.0 (Apr 11, 2018)

FEATURES:

* **New Resource:** `lb`
* **New Resource:** `lb_target_group`

ENHANCEMENTS:

* Update `README.md` add Contributing section
* Update `README.md` add Supported ReResources section

## v0.1.0 (Apr 10, 2018)

NOTES:

* Initial Release

FEATURES:

* **New Resource:** `autoscaling_policy`
* **New Resource:** `cloudwatch_log_group`
* **New Resource:** `db_instance`
* **New Resource:** `db_parameter_group`
* **New Resource:** `iam_role`
* **New Resource:** `s3_bucket`
