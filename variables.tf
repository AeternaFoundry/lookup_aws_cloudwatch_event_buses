variable "cloudwatch_event_buses_lookup" {
  description = <<EOT
Map of cloudwatch_event_buses_lookup, attributes below
Optional:
    - name_prefix
    - region
EOT

  type = map(object({
    name_prefix = optional(string)
    region      = optional(string)
  }))
}

