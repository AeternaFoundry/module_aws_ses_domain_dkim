output "ses_domain_dkims_id" {
  description = "Map of id values across all ses_domain_dkims, keyed the same as var.ses_domain_dkims"
  value       = { for k, v in aws_ses_domain_dkim.ses_domain_dkims : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_domain_dkims_dkim_tokens" {
  description = "Map of dkim_tokens values across all ses_domain_dkims, keyed the same as var.ses_domain_dkims"
  value       = { for k, v in aws_ses_domain_dkim.ses_domain_dkims : k => v.dkim_tokens if v.dkim_tokens != null && length(v.dkim_tokens) > 0 }
}
output "ses_domain_dkims_domain" {
  description = "Map of domain values across all ses_domain_dkims, keyed the same as var.ses_domain_dkims"
  value       = { for k, v in aws_ses_domain_dkim.ses_domain_dkims : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "ses_domain_dkims_region" {
  description = "Map of region values across all ses_domain_dkims, keyed the same as var.ses_domain_dkims"
  value       = { for k, v in aws_ses_domain_dkim.ses_domain_dkims : k => v.region if v.region != null && length(v.region) > 0 }
}

