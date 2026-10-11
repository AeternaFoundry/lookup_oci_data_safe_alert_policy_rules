output "data_safe_alert_policy_rules_lookup_id" {
  description = "Map of id values across all data_safe_alert_policy_rules_lookup, keyed the same as var.data_safe_alert_policy_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_data_safe_alert_policy_rules.data_safe_alert_policy_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_alert_policy_rules_lookup_alert_policy_id" {
  description = "Map of alert_policy_id values across all data_safe_alert_policy_rules_lookup, keyed the same as var.data_safe_alert_policy_rules_lookup except keys with no alert_policy_id are omitted"
  value       = { for k, v in data.oci_data_safe_alert_policy_rules.data_safe_alert_policy_rules_lookup : k => v.alert_policy_id if v.alert_policy_id != null && length(v.alert_policy_id) > 0 }
}
output "data_safe_alert_policy_rules_lookup_alert_policy_rule_collection" {
  description = "Map of alert_policy_rule_collection values across all data_safe_alert_policy_rules_lookup, keyed the same as var.data_safe_alert_policy_rules_lookup except keys with no alert_policy_rule_collection are omitted"
  value       = { for k, v in data.oci_data_safe_alert_policy_rules.data_safe_alert_policy_rules_lookup : k => v.alert_policy_rule_collection if v.alert_policy_rule_collection != null && length(v.alert_policy_rule_collection) > 0 }
}
output "data_safe_alert_policy_rules_lookup_filter" {
  description = "Map of filter values across all data_safe_alert_policy_rules_lookup, keyed the same as var.data_safe_alert_policy_rules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_data_safe_alert_policy_rules.data_safe_alert_policy_rules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

