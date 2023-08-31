#1 Create a Region
variable "region" {
  type        = string
  description = "Region to create resources"
  default     = "us-east-1"

}

#2 Create a named profile
variable "profile" {
  type        = string
  description = "IAM user credential executing the terraform script"
  default     = "wiz"

}

#3 Create Environment for the project

variable "environment" {
  type        = string
  description = "Environment that has this project"
  default     = "dev"
}
#4 Create Name for the project
variable "project_name" {
  type        = string
  description = "Name of the project"
  default     = "rentzone-ecs-project"

}