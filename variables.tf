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
        v.integration_runtime_name == null || (length(v.integration_runtime_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_linked_service_azure_function's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: key_vault_key.linked_service_name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: key_vault_key.secret_name
  #   source:    [from keyvault.ValidateNestedItemName] !ok
  # path: key_vault_key.secret_name
  #   condition: length(value) <= 127
  #   message:   [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  #   source:    [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  # path: key_vault_key.secret_name
  #   source:    [from keyvault.ValidateNestedItemName] !regexp.MustCompile(`^[0-9a-zA-Z-]+$`).MatchString(v.(string))
}

