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
* cloudwatch_event_rule
* cloudwatch_log_group
* db_instance
* db_parameter_group
* dynamodb_table
* elasticache_cluster
* elasticsearch_domain
* iam_instance_profile
* iam_role
* key_pair
* lambda_function
* launch_configuration
* lb
* lb_target_group
* security_group
* s3_bucket
* sns_topic
* sqs_queue
* fifo_sqs_queue


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
