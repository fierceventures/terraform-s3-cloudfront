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
- 

Author
------
Created and maintained by [Fierce Ventures](https://github.com/fierceventures/)
