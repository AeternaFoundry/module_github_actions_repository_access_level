output "actions_repository_access_levels_id" {
  description = "Map of id values across all actions_repository_access_levels, keyed the same as var.actions_repository_access_levels"
  value       = { for k, v in github_actions_repository_access_level.actions_repository_access_levels : k => v.id }
}
output "actions_repository_access_levels_access_level" {
  description = "Map of access_level values across all actions_repository_access_levels, keyed the same as var.actions_repository_access_levels"
  value       = { for k, v in github_actions_repository_access_level.actions_repository_access_levels : k => v.access_level }
}
output "actions_repository_access_levels_repository" {
  description = "Map of repository values across all actions_repository_access_levels, keyed the same as var.actions_repository_access_levels"
  value       = { for k, v in github_actions_repository_access_level.actions_repository_access_levels : k => v.repository }
}

