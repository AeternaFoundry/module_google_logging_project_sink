output "logging_project_sinks_id" {
  description = "Map of id values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no id are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logging_project_sinks_bigquery_options" {
  description = "Map of bigquery_options values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no bigquery_options are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => one(v.bigquery_options) if v.bigquery_options != null && length(v.bigquery_options) > 0 }
}
output "logging_project_sinks_custom_writer_identity" {
  description = "Map of custom_writer_identity values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no custom_writer_identity are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.custom_writer_identity if v.custom_writer_identity != null && length(v.custom_writer_identity) > 0 }
}
output "logging_project_sinks_deletion_policy" {
  description = "Map of deletion_policy values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "logging_project_sinks_description" {
  description = "Map of description values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no description are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "logging_project_sinks_destination" {
  description = "Map of destination values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no destination are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "logging_project_sinks_disabled" {
  description = "Map of disabled values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no disabled are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.disabled if v.disabled != null }
}
output "logging_project_sinks_exclusions" {
  description = "Map of exclusions values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no exclusions are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.exclusions if v.exclusions != null && length(v.exclusions) > 0 }
}
output "logging_project_sinks_filter" {
  description = "Map of filter values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no filter are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "logging_project_sinks_name" {
  description = "Map of name values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no name are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logging_project_sinks_project" {
  description = "Map of project values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no project are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.project if v.project != null && length(v.project) > 0 }
}
output "logging_project_sinks_unique_writer_identity" {
  description = "Map of unique_writer_identity values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no unique_writer_identity are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.unique_writer_identity if v.unique_writer_identity != null }
}
output "logging_project_sinks_writer_identity" {
  description = "Map of writer_identity values across all logging_project_sinks, keyed the same as var.logging_project_sinks except keys with no writer_identity are omitted"
  value       = { for k, v in google_logging_project_sink.logging_project_sinks : k => v.writer_identity if v.writer_identity != null && length(v.writer_identity) > 0 }
}

