variable "logging_project_sinks" {
  description = <<EOT
Map of logging_project_sinks, attributes below
Required:
    - destination
    - name
Optional:
    - custom_writer_identity
    - deletion_policy
    - description
    - disabled
    - filter
    - project
    - unique_writer_identity
    - bigquery_options (block):
        - use_partitioned_tables (required)
    - exclusions (block):
        - description (optional)
        - disabled (optional)
        - filter (required)
        - name (required)
EOT

  type = map(object({
    destination            = string
    name                   = string
    custom_writer_identity = optional(string)
    deletion_policy        = optional(string)
    description            = optional(string)
    disabled               = optional(bool)
    filter                 = optional(string)
    project                = optional(string)
    unique_writer_identity = optional(bool)
    bigquery_options = optional(object({
      use_partitioned_tables = bool
    }))
    exclusions = optional(list(object({
      description = optional(string)
      disabled    = optional(bool)
      filter      = string
      name        = string
    })))
  }))
}

