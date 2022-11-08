variable "prefix" {
  default = "raad"
}

variable "project" {
  default = "recipe-app-api"
}

variable "contact" {
  default = "priyanshu12498@gmail.com"
}

variable "region" {
  default = "us-east-1"
}


variable "db_username" {
  description = "Username for RDS Postgres Database Instance"
}

variable "db_password" {
  description = "Password for RDS Postgres Database Instance"
}

variable "bastion_key_name" {
  description = "SSH key enter bastion"
  default     = "recipe-app-api-devops-bastion"
}