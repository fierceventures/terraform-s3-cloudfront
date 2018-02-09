# AWS s3 with cloudfront

This module can be used to deploy a website configured s3 bucket and cloudfront to AWS.

Module Input Variables
----------------------

- `name` - Name prefix for resources (project name).
- `env` - The environment 

Usage 
-----

```hcl
module s3-cloudfront {
  source = "github.com/fierceventures/terraform-s3-cloudfront"
  namespace = "todo-app"
  env = "staging"
}
```

Outputs
-------
- `distribution_id` - The distribution id
- `domain_name` - The distribution domain name
- `zone_id` - The distribution hosted zone id

Author
------
Created and maintained by [Fierce Ventures](https://github.com/fierceventures/)
