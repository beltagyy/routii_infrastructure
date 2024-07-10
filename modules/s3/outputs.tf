output "bucket_name" {
  value = aws_s3_bucket.images.bucket
}

output "bucket_domain_name" {
  value = aws_s3_bucket.images.bucket_domain_name
}
