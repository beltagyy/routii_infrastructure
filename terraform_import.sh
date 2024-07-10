#!/bin/bash

# # Import ELBv2 Load Balancer
# terraform import module.alb.aws_alb.main arn:aws:elasticloadbalancing:<region>:<account-id>:loadbalancer/app/main-alb-1/6e32e90b10127728

# # Import ELBv2 Target Group
# terraform import module.alb.aws_alb_target_group.main arn:aws:elasticloadbalancing:<region>:<account-id>:targetgroup/main-tg/<target-group-id>

# # Import ECR Repository
# terraform import module.ecr.aws_ecr_repository.repo arn:aws:ecr:<region>:<account-id>:repository/routii-repo-1

# # Import S3 Bucket
# terraform import module.s3.aws_s3_bucket.images test-routii

# # Add more imports as necessary...
