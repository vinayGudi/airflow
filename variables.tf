


variable "aws_region" {
  default     = "ap-south-1"
  description = "AWS region"
}

variable "aws_profile" {
  default = "default"
  type    = string
}

variable "dag_s3_path" {
  default = "path/to/dag"
  type    = string
}

variable "execution_role_arn" {
  type = string
}

variable "name" {
  default = "insearch-dev-airflow"
  type    = string
}

variable "sg_id" {
  type = string
}


variable "private_subnet_1" {
  type = string
}

variable "private_subnet_2" {
  type = string
}

variable "source_bucket_arn" {
  type = string
}
