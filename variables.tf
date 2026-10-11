variable "disable_legacy_access_settings" {
  description = <<EOT
Map of disable_legacy_access_settings, attributes below
Required:
    - disable_legacy_access (block):
        - value (required)
Optional:
    - etag
    - setting_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    etag         = optional(string)
    setting_name = optional(string)
    disable_legacy_access = object({
      value = bool
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

