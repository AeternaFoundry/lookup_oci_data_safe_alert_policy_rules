variable "data_safe_alert_policy_rules_lookup" {
  description = <<EOT
Map of data_safe_alert_policy_rules_lookup, attributes below
Required:
    - alert_policy_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    alert_policy_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

