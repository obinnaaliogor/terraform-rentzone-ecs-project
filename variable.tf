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
  default     = "obinna"

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
  default     = "rentzone-ecs"

}

#s3 bucket variables
variable "env_file_bucket_name" {
  type        = string
  description = "Name of bucket"
}


variable "env_file_name" {
  type        = string
  description = "Name of the env file when it is in s3 bucket"
  default     = "rentzone-github.env"

}



variable "env_file_location" {
  type        = string
  description = "env file location in our local computer or pwd "
  default     = "./rentzone-github.env"
}