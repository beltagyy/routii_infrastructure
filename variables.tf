variable "region" {
  default = "eu-central-1"
}
variable "environment" {
  description = "Environment for the app."
  type        = string
  default     = "dev"
}
variable "alb" {
  type = object({
    security_group_id = string
    certificate_arn   = string
    vpc_id            = string
    alb_subnets       = list(string)
  })

  default = {
    security_group_id = "default-security-group-id"
    certificate_arn   = "default-certificate-arn"
    vpc_id            = "default-vpc-id"
    alb_subnets       = ["default-subnet-id"]
  }
}

variable "vpc" {
  type = object({
    subnets          = list(string)
    target_group_arn = string
  })

  default = {
    subnets          = ["default-subnet-id"]
    target_group_arn = "default-target-group-arn"
  }
}
# variable "execution_role_arn" {
#   description = "The ARN of the IAM role that the ECS task will use to execute."
#   type        = string
# }

# variable "task_role_arn" {
#   description = "The ARN of the IAM role that the ECS task will use."
#   type        = string
# }
