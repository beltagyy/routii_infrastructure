provider "aws" {
  region = var.region
  #   profile = "default" #AWS Credentials Profile (profile = "default") configured on local
  #   access_key = var.aws_access_key
  #   secret_key = var.aws_secret_key
}
# VPC Module 
module "vpc" {
  source = "./modules/vpc"
}

# ECR Module
module "ecr" {
  source          = "./modules/ecr"
  repository_name = "routii-repo-1"
}

# ECS Module
module "ecs" {
  source             = "./modules/ecs"
  cluster_name       = "main-cluster"
  repository_url     = module.ecr.repository_url
  subnets            = module.vpc.private_subnets
  security_group_id  = module.vpc.ecs_security_group_id
  target_group_arn   = module.alb.target_group_arn
  execution_role_arn = "arn:aws:iam::211125518849:role/ecs_task_role"
  task_role_arn      = "arn:aws:iam::211125518849:role/ecs_task_role"
}

# RDS Module
module "rds" {
  source   = "./modules/rds"
  db_name  = "mydb"
  username = "admin"
  password = "password"
  #   subnet_ids = module.vpc.private_subnets
  #   vpc_security_group_ids = [module.vpc.rds_security_group_id]
}

# S3 Module
module "s3" {
  source      = "./modules/s3"
  bucket_name = "test-routii"
  environment = "dev"
}

# CloudFront Module
module "cloudfront" {
  source                = "./modules/cloudfront"
  s3_bucket_domain_name = module.s3.bucket_domain_name
  s3_bucket_name        = module.s3.bucket_name
}

# ALB Module
module "alb" {
  source            = "./modules/alb"
  alb_internal      = false
  alb_subnets       = var.vpc.subnets
  security_group_id = var.alb.security_group_id
  certificate_arn   = var.alb.certificate_arn
  vpc_id            = var.alb.vpc_id
  target_group_arn  = var.vpc.target_group_arn
  subnets           = var.alb.alb_subnets
}
