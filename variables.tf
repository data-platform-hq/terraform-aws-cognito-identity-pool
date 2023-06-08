variable "create" {
  description = "Controls if resources should be created (affects nearly all resources)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

################################################################################
# Cognito identity pool
################################################################################
variable "name" {
  description = "The Cognito Identity Pool name"
  type        = string
}

variable "allow_unauthenticated_identities" {
  description = "Whether the identity pool supports unauthenticated logins or not"
  type        = bool
  default     = false
}

variable "allow_classic_flow" {
  description = "Enables or disables the classic / basic authentication flow"
  type        = bool
  default     = null
}

variable "developer_provider_name" {
  description = "The 'domain' by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider"
  type        = string
  default     = null
}

variable "openid_connect_provider_arns" {
  description = "Set of OpendID Connect provider ARNs"
  type        = list(string)
  default     = null
}

variable "saml_provider_arns" {
  description = "An array of Amazon Resource Names (ARNs) of the SAML provider for your identity"
  type        = list(string)
  default     = null
}

variable "supported_login_providers" {
  description = "Key-Value pairs mapping provider names to provider app IDs"
  type        = map(string)
  default     = null
}

variable "cognito_identity_providers" {
  description = "A list of Amazon Cognito Identity user pools and their client IDs"
  type = list(object({
    client_id               = optional(string) # The client ID for the Amazon Cognito Identity User Pool
    provider_name           = optional(string) # The provider name for an Amazon Cognito Identity User Pool
    server_side_token_check = optional(bool)   # Whether server-side token validation is enabled for the identity provider’s token or not
  }))
  default = []
}
