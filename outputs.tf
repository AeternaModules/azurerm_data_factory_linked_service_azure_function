output "data_factory_linked_service_azure_functions_id" {
  description = "Map of id values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_linked_service_azure_functions_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_linked_service_azure_functions_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_linked_service_azure_functions_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_linked_service_azure_functions_description" {
  description = "Map of description values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_linked_service_azure_functions_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.integration_runtime_name if v.integration_runtime_name != null && length(v.integration_runtime_name) > 0 }
}
output "data_factory_linked_service_azure_functions_key" {
  description = "Map of key values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.key if v.key != null && length(v.key) > 0 }
  sensitive   = true
}
output "data_factory_linked_service_azure_functions_key_vault_key" {
  description = "Map of key_vault_key values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.key_vault_key if v.key_vault_key != null && length(v.key_vault_key) > 0 }
}
output "data_factory_linked_service_azure_functions_name" {
  description = "Map of name values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_linked_service_azure_functions_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_linked_service_azure_functions_url" {
  description = "Map of url values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.url if v.url != null && length(v.url) > 0 }
}

