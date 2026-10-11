resource "google_logging_project_sink" "logging_project_sinks" {
  for_each = var.logging_project_sinks

  destination            = each.value.destination
  name                   = each.value.name
  custom_writer_identity = each.value.custom_writer_identity
  deletion_policy        = each.value.deletion_policy
  description            = each.value.description
  disabled               = each.value.disabled
  filter                 = each.value.filter
  project                = each.value.project
  unique_writer_identity = each.value.unique_writer_identity

  dynamic "bigquery_options" {
    for_each = each.value.bigquery_options != null ? [each.value.bigquery_options] : []
    content {
      use_partitioned_tables = bigquery_options.value.use_partitioned_tables
    }
  }

  dynamic "exclusions" {
    for_each = each.value.exclusions != null ? each.value.exclusions : []
    content {
      description = exclusions.value.description
      disabled    = exclusions.value.disabled
      filter      = exclusions.value.filter
      name        = exclusions.value.name
    }
  }
}

