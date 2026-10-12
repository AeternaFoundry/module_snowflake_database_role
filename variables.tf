variable "database_roles" {
  description = <<EOT
Map of database_roles, attributes below
Required:
    - database
    - name
Optional:
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database = string
    name     = string
    comment  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

