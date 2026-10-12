output "database_roles_id" {
  description = "Map of id values across all database_roles, keyed the same as var.database_roles except keys with no id are omitted"
  value       = { for k, v in snowflake_database_role.database_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_roles_comment" {
  description = "Map of comment values across all database_roles, keyed the same as var.database_roles except keys with no comment are omitted"
  value       = { for k, v in snowflake_database_role.database_roles : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "database_roles_database" {
  description = "Map of database values across all database_roles, keyed the same as var.database_roles except keys with no database are omitted"
  value       = { for k, v in snowflake_database_role.database_roles : k => v.database if v.database != null && length(v.database) > 0 }
}
output "database_roles_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all database_roles, keyed the same as var.database_roles except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_database_role.database_roles : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "database_roles_name" {
  description = "Map of name values across all database_roles, keyed the same as var.database_roles except keys with no name are omitted"
  value       = { for k, v in snowflake_database_role.database_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "database_roles_show_output" {
  description = "Map of show_output values across all database_roles, keyed the same as var.database_roles except keys with no show_output are omitted"
  value       = { for k, v in snowflake_database_role.database_roles : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

