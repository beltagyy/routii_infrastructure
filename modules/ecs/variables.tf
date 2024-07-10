variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "repository_url" {
  description = "The URL of the ECR repository"
  type        = string
}

variable "subnets" {
  description = "The subnets to deploy the ECS service in"
  type        = list(string)
}

variable "security_group_id" {
  description = "The security group ID to associate with the ECS service"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the ALB target group"
  type        = string
}

variable "execution_role_arn" {
  description = "The ARN of the IAM role that the ECS task will use to execute."
  type        = string
}

variable "task_role_arn" {
  description = "The ARN of the IAM role that the ECS task will use."
  type        = string
}
