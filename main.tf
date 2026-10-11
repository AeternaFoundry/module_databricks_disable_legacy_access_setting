resource "databricks_disable_legacy_access_setting" "disable_legacy_access_settings" {
  for_each = var.disable_legacy_access_settings

  etag         = each.value.etag
  setting_name = each.value.setting_name

  disable_legacy_access {
    value = each.value.disable_legacy_access.value
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

