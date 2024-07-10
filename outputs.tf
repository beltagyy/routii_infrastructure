output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "rds_endpoint" {
  value = module.rds.endpoint
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "cloudfront_distribution_domain" {
  value = module.cloudfront.distribution_domain
}

output "alb_dns_name" {
  value = module.alb.dns_name
}

