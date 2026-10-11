output "actions_repository_access_levels_id" {
  description = "Map of id values across all actions_repository_access_levels, keyed the same as var.actions_repository_access_levels"
  value       = { for k, v in github_actions_repository_access_level.actions_repository_access_levels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "actions_repository_access_levels_access_level" {
  description = "Map of access_level values across all actions_repository_access_levels, keyed the same as var.actions_repository_access_levels"
  value       = { for k, v in github_actions_repository_access_level.actions_repository_access_levels : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "actions_repository_access_levels_repository" {
  description = "Map of repository values across all actions_repository_access_levels, keyed the same as var.actions_repository_access_levels"
  value       = { for k, v in github_actions_repository_access_level.actions_repository_access_levels : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

