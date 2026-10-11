data "oci_data_safe_alert_policy_rules" "data_safe_alert_policy_rules_lookup" {
  for_each = var.data_safe_alert_policy_rules_lookup

  alert_policy_id = each.value.alert_policy_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

