output "athena_database_name" {
  value = aws_glue_catalog_database.athena_db.name
}

output "athena_workgroup_name" {
  value = aws_athena_workgroup.default.name
}

output "alb_logs_tables" {
  value = aws_glue_catalog_table.alb_logs_table
}