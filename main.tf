data "aws_cloudwatch_event_buses" "cloudwatch_event_buses_lookup" {
  for_each = var.cloudwatch_event_buses_lookup

  name_prefix = each.value.name_prefix
  region      = each.value.region
}

