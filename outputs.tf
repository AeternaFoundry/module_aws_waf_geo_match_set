output "waf_geo_match_sets_id" {
  description = "Map of id values across all waf_geo_match_sets, keyed the same as var.waf_geo_match_sets"
  value       = { for k, v in aws_waf_geo_match_set.waf_geo_match_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_geo_match_sets_arn" {
  description = "Map of arn values across all waf_geo_match_sets, keyed the same as var.waf_geo_match_sets"
  value       = { for k, v in aws_waf_geo_match_set.waf_geo_match_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "waf_geo_match_sets_geo_match_constraint" {
  description = "Map of geo_match_constraint values across all waf_geo_match_sets, keyed the same as var.waf_geo_match_sets"
  value       = { for k, v in aws_waf_geo_match_set.waf_geo_match_sets : k => v.geo_match_constraint if v.geo_match_constraint != null && length(v.geo_match_constraint) > 0 }
}
output "waf_geo_match_sets_name" {
  description = "Map of name values across all waf_geo_match_sets, keyed the same as var.waf_geo_match_sets"
  value       = { for k, v in aws_waf_geo_match_set.waf_geo_match_sets : k => v.name if v.name != null && length(v.name) > 0 }
}

