# Contributing

**NOTES:**
* It is required for all of your commits to be signed, otherwise your PR will not be able to be merged. To know how to do so, please read: https://help.github.com/en/articles/signing-commits

You can increase the number of this module's supported resources by adding the information about maximum character allowed for a resource name from AWS.

Here are the steps you must do: 
* Look up to AWS Documentations for information about `Maximum Length Constraints` of the name of your resource type
* Make note of the information (how many characters are allowed)
* Save URL of the documentation you found
* Modify `max_character_length` on [resources.tf](https://github.com/traveloka/terraform-aws-resource-naming/blob/master/resources.tf) by adding information you found:
    * Add a resource support by adding the information using this format:   
      "<resource_type>" = "<maximum_number_of_character_allowed>" # <documentation_url>
    *  The format of `resource_type` is taken from Terraform resource name by omitting `aws_` prefix. For example:
        * aws_db_parameter_group (https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html) -->  db_parameter_group
        * aws_lb (https://www.terraform.io/docs/providers/aws/r/lb.html) -->  lb
        * aws_s3_bucket (https://www.terraform.io/docs/providers/aws/r/s3_bucket.html) -->  s3_bucket
    * Sort alphabetically in ascending order!
* Also add the resource you added to [Supported Resources list](https://github.com/traveloka/terraform-aws-resource-naming#supported-resources) on the [README](https://github.com/traveloka/terraform-aws-resource-naming/blob/master/README.md) file

That's all. Happy contributing!