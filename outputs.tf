output "distribution_id" {
  value = "${aws_cloudfront_distribution.s3_dist.id}"
}
output "domain_name" {
  value = "${aws_cloudfront_distribution.s3_dist.domain_name}"
}
