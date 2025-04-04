variable "database_name" {
  description = "The name of the Glue catalog database"
  type        = string
}

variable "workgroup_name" {
  description = "The name of the Athena workgroup"
  type        = string
}

variable "athena_results_s3_bucket_name" {
  description = "The default S3 bucket name for Athena results"
  type        = string
}

variable "alb_logs_tables" {
  description = "A list of ALB logs tables to create in the Glue catalog"
  type = list(object({
    name           = string
    s3_bucket_name = string
    load_balancer_name = string
    account_id     = string
    aws_region     = string
  }))
}