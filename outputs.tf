output "cloudwatch_event_buses_lookup_event_buses" {
  description = "Map of event_buses values across all cloudwatch_event_buses_lookup, keyed the same as var.cloudwatch_event_buses_lookup"
  value       = { for k, v in data.aws_cloudwatch_event_buses.cloudwatch_event_buses_lookup : k => v.event_buses if v.event_buses != null && length(v.event_buses) > 0 }
}
output "cloudwatch_event_buses_lookup_name_prefix" {
  description = "Map of name_prefix values across all cloudwatch_event_buses_lookup, keyed the same as var.cloudwatch_event_buses_lookup"
  value       = { for k, v in data.aws_cloudwatch_event_buses.cloudwatch_event_buses_lookup : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "cloudwatch_event_buses_lookup_region" {
  description = "Map of region values across all cloudwatch_event_buses_lookup, keyed the same as var.cloudwatch_event_buses_lookup"
  value       = { for k, v in data.aws_cloudwatch_event_buses.cloudwatch_event_buses_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

