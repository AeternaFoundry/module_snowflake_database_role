resource "snowflake_database_role" "database_roles" {
  for_each = var.database_roles

  database = each.value.database
  name     = each.value.name
  comment  = each.value.comment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

