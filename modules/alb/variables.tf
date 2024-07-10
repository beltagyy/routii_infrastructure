variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the target group"
  type        = string
}

variable "subnets" {
  description = "The subnets for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID where the ALB will be deployed"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the ALB"
  type        = string
}
variable "alb_internal" {
  description = "Boolean flag to create an internal ALB"
  type        = bool
}

variable "alb_subnets" {
  description = "Subnets to attach the ALB to"
  type        = list(string)
}
