# WS ALB (aws_alb.main):

Type: Application Load Balancer (ALB)
Name: main-alb
Subnets: Two subnets specified (subnet-abcdef01, subnet-abcdef02)
Security Groups: One security group (sg-1234567890abcdef0)
Listeners: HTTP (port 80) and HTTPS (port 443)
Attributes: HTTP/2 enabled, idle timeout of 60 seconds, etc.
ALB Listeners (aws_alb_listener.http and aws_alb_listener.https):

HTTP Listener:
Port 80, forwarding to a target group
HTTPS Listener:
Port 443, SSL policy ELBSecurityPolicy-2016-08, forwarding to a target group
ALB Target Group (aws_alb_target_group.main):

Name: main-tg
Protocol: HTTP
Port: 80
Health Check: HTTP protocol, path /, port traffic-port, interval 30 seconds, etc.
AWS CloudFront (aws_cloudfront_distribution.cdn):

Type: CDN distribution
Comment: "S3 CDN"
Default Root Object: index.html
Enabled Features: HTTP/2, IPv6
Default Cache Behavior: Redirect HTTP to HTTPS, cache GET/HEAD requests
Origin: S3 bucket origin with certain configurations
AWS ECS Cluster (aws_ecs_cluster.main):

Name: main-cluster
AWS ECS Service (aws_ecs_service.app):

Name: app-service
Launch Type: Fargate
Desired Count: 1
Network Configuration: Assigns public IP false, uses security groups and subnets (details not fully shown)
AWS ECS Task Definition (aws_ecs_task_definition.app):

Family: app
Network Mode: awsvpc
Requires Compatibility: Fargate
CPU/Memory: 256 CPU units, 512 MiB memory
AWS RDS Instance (aws_db_instance.db):

Engine: MySQL
Instance Class: db.t2.micro
Storage: 20 GB
Database Name: mydb
Username: admin
Security Group: Allows inbound traffic on port 3306
AWS S3 Bucket (aws_s3_bucket.images):

Name: your-bucket-name
Tags: Environment=dev, Name=your-bucket-name
AWS VPC (aws_vpc.main):

CIDR Block: 10.0.0.0/16
DNS Support: Enabled
And other resources like security groups (aws_security_group), subnets (aws_subnet), CloudFront settings, ECR repository, etc., are also part of Terraform plan.