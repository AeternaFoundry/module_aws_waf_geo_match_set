variable "waf_geo_match_sets" {
  description = <<EOT
Map of waf_geo_match_sets, attributes below
Required:
    - name
Optional:
    - geo_match_constraint (block):
        - type (required)
        - value (required)
EOT

  type = map(object({
    name = string
    geo_match_constraint = optional(list(object({
      type  = string
      value = string
    })))
  }))
}

