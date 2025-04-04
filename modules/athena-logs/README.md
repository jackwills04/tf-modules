# Terraform Module: Athena Logs

This Terraform module creates an Athena setup for analyzing ALB logs. It includes the creation of a Glue catalog database, Athena workgroup, IAM roles and policies, and Glue catalog tables for ALB logs.

## Usage

```hcl
module "athena_logs" {
  source = "./athena_logs"

  database_name        = "my_athena_db"
  workgroup_name       = "my_athena_workgroup"
  role_name            = "my_athena_role"
  default_s3_bucket_name = "my-default-s3-bucket"

  alb_logs_tables = [
    {
      name           = "alb_logs_table1"
      s3_bucket_name = "alb-logs-bucket1"
      account_id     = "123456789012"
      aws_region     = "us-west-2"
    },
    {
      name           = "alb_logs_table2"
      s3_bucket_name = "alb-logs-bucket2"
      account_id     = "123456789012"
      aws_region     = "us-west-2"
    }
  ]
}