# AWS s3 with cloudfront

This module can be used to deploy a website configured s3 bucket and cloudfront to AWS.

Module Input Variables
----------------------

- `name` - Name prefix for resources (project name).
- `env` - The environment 

Usage 
-----

```hcl
data "aws_acm_certificate" "cert" {
  domain = "example.com"
}

module s3-cloudfront {
  source = "github.com/fierceventures/terraform-s3-cloudfront"
  name = "todo-app"
  env = "staging"
  cert = "${data.aws_acm_certificate.cert.arn}"
}
```

Outputs
-------
- `distribution_id` - The distribution id
- `domain_name` - The distribution domain name
- `zone_id` - The distribution hosted zone id
- `cert` - The acm certificate arn
- `bucket_name` - The bucket name

Author
------
Created and maintained by [Fierce Ventures](https://github.com/fierceventures/)
