variable "data_factory_linked_service_azure_functions" {
  description = <<EOT
Map of data_factory_linked_service_azure_functions, attributes below
Required:
    - data_factory_id
    - name
    - url
Optional:
    - additional_properties
    - annotations
    - description
    - integration_runtime_name
    - key
    - key_key_vault_id (alternative to key - read from Key Vault instead)
    - key_key_vault_secret_name (alternative to key - read from Key Vault instead)
    - parameters
    - key_vault_key (block):
        - linked_service_name (required)
        - secret_name (required)
EOT

  type = map(object({
    data_factory_id           = string
    name                      = string
    url                       = string
    additional_properties     = optional(map(string))
    annotations               = optional(list(string))
    description               = optional(string)
    integration_runtime_name  = optional(string)
    key                       = optional(string)
    key_key_vault_id          = optional(string)
    key_key_vault_secret_name = optional(string)
    parameters                = optional(map(string))
    key_vault_key = optional(object({
      linked_service_name = string
      secret_name         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_functions : (
        length(v.url) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_functions : (
        v.key == null || (length(v.key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_functions : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_functions : (
        v.key_vault_key == null || (length(v.key_vault_key.secret_name) <= 127)
      )
    ])
    error_message = "[from keyvault.ValidateNestedItemName: invalid when len(value) > 127]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_linked_service_azure_functions : (
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

