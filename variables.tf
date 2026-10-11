variable "actions_repository_access_levels" {
  description = <<EOT
Map of actions_repository_access_levels, attributes below
Required:
    - access_level
    - repository
EOT

  type = map(object({
    access_level = string
    repository   = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.actions_repository_access_levels : (
        contains(["none", "user", "organization", "enterprise"], v.access_level)
      )
    ])
    error_message = "must be one of: none, user, organization, enterprise"
  }
  validation {
    condition = alltrue([
      for k, v in var.actions_repository_access_levels : (
        length(v.repository) >= 1 && length(v.repository) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

