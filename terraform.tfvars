region = "eu-central-1"

environment = "prod"

alb = {
  security_group_id = "sg-0663374a65b4d05e5"
  certificate_arn   = "arn:aws:acm:eu-central-1:211125518849:certificate/4b152184-5a14-4fee-8a5f-7e08b946a097"
  vpc_id            = "vpc-0295aee900a63ed1b"
  alb_subnets       = ["subnet-08ada83a8015ae3aa", "subnet-00eafc55efb44791e"]
}

vpc = {
  subnets          = ["subnet-08ada83a8015ae3aa", "subnet-00eafc55efb44791e"]
  target_group_arn = "arn:aws:elasticloadbalancing:eu-central-1:211125518849:targetgroup/test/2ad015246a2e0ddb"
}

