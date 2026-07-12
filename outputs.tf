output "data_factory_linked_service_azure_functions_id" {
  description = "Map of id values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.id }
}
output "data_factory_linked_service_azure_functions_additional_properties" {
  description = "Map of additional_properties values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.additional_properties }
}
output "data_factory_linked_service_azure_functions_annotations" {
  description = "Map of annotations values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.annotations }
}
output "data_factory_linked_service_azure_functions_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.data_factory_id }
}
output "data_factory_linked_service_azure_functions_description" {
  description = "Map of description values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.description }
}
output "data_factory_linked_service_azure_functions_integration_runtime_name" {
  description = "Map of integration_runtime_name values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.integration_runtime_name }
}
output "data_factory_linked_service_azure_functions_key" {
  description = "Map of key values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.key }
  sensitive   = true
}
output "data_factory_linked_service_azure_functions_key_vault_key" {
  description = "Map of key_vault_key values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.key_vault_key }
}
output "data_factory_linked_service_azure_functions_name" {
  description = "Map of name values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.name }
}
output "data_factory_linked_service_azure_functions_parameters" {
  description = "Map of parameters values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.parameters }
}
output "data_factory_linked_service_azure_functions_url" {
  description = "Map of url values across all data_factory_linked_service_azure_functions, keyed the same as var.data_factory_linked_service_azure_functions"
  value       = { for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : k => v.url }
}

