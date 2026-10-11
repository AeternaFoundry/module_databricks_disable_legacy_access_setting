output "disable_legacy_access_settings_id" {
  description = "Map of id values across all disable_legacy_access_settings, keyed the same as var.disable_legacy_access_settings except keys with no id are omitted"
  value       = { for k, v in databricks_disable_legacy_access_setting.disable_legacy_access_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "disable_legacy_access_settings_disable_legacy_access" {
  description = "Map of disable_legacy_access values across all disable_legacy_access_settings, keyed the same as var.disable_legacy_access_settings except keys with no disable_legacy_access are omitted"
  value       = { for k, v in databricks_disable_legacy_access_setting.disable_legacy_access_settings : k => one(v.disable_legacy_access) if v.disable_legacy_access != null && length(v.disable_legacy_access) > 0 }
}
output "disable_legacy_access_settings_etag" {
  description = "Map of etag values across all disable_legacy_access_settings, keyed the same as var.disable_legacy_access_settings except keys with no etag are omitted"
  value       = { for k, v in databricks_disable_legacy_access_setting.disable_legacy_access_settings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "disable_legacy_access_settings_provider_config" {
  description = "Map of provider_config values across all disable_legacy_access_settings, keyed the same as var.disable_legacy_access_settings except keys with no provider_config are omitted"
  value       = { for k, v in databricks_disable_legacy_access_setting.disable_legacy_access_settings : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "disable_legacy_access_settings_setting_name" {
  description = "Map of setting_name values across all disable_legacy_access_settings, keyed the same as var.disable_legacy_access_settings except keys with no setting_name are omitted"
  value       = { for k, v in databricks_disable_legacy_access_setting.disable_legacy_access_settings : k => v.setting_name if v.setting_name != null && length(v.setting_name) > 0 }
}

