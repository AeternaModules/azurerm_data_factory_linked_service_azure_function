output "data_factory_linked_service_azure_functions" {
  description = "All data_factory_linked_service_azure_function resources"
  value       = azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions
  sensitive   = true
}
output "data_factory_linked_service_azure_functions_additional_properties" {
  description = "List of additional_properties values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.additional_properties]
}
output "data_factory_linked_service_azure_functions_annotations" {
  description = "List of annotations values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.annotations]
}
output "data_factory_linked_service_azure_functions_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.data_factory_id]
}
output "data_factory_linked_service_azure_functions_description" {
  description = "List of description values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.description]
}
output "data_factory_linked_service_azure_functions_integration_runtime_name" {
  description = "List of integration_runtime_name values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.integration_runtime_name]
}
output "data_factory_linked_service_azure_functions_key" {
  description = "List of key values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.key]
  sensitive   = true
}
output "data_factory_linked_service_azure_functions_key_vault_key" {
  description = "List of key_vault_key values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.key_vault_key]
}
output "data_factory_linked_service_azure_functions_name" {
  description = "List of name values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.name]
}
output "data_factory_linked_service_azure_functions_parameters" {
  description = "List of parameters values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.parameters]
}
output "data_factory_linked_service_azure_functions_url" {
  description = "List of url values across all data_factory_linked_service_azure_functions"
  value       = [for k, v in azurerm_data_factory_linked_service_azure_function.data_factory_linked_service_azure_functions : v.url]
}

