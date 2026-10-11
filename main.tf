resource "github_actions_repository_access_level" "actions_repository_access_levels" {
  for_each = var.actions_repository_access_levels

  access_level = each.value.access_level
  repository   = each.value.repository
}

