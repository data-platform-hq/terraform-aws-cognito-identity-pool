# AWS Cognito Identity Pool Terraform module
Terraform module for AWS Cognito Identity Pool creation

## Usage

```hcl
module "cognito_identity_pool" {
  source  = "data-platform-hq/cognito-identity-pool/aws"
  version = "~> 1.0"
  
  tags = {
    ENV: "Development"
  }
  
  name = "identity-pool1"
  cognito_identity_providers = [
    {
      client_id               = "7kodkvfqfb4qfkp39eurffae"
      provider_name           = "cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu"
      server_side_token_check = false
    }
  ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                        | Version  |
|-----------------------------------------------------------------------------|----------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)   | >= 1.0   |
| <a name="requirement_aws"></a> [aws](#requirement\_aws)                     | >= 5.1.0 |

## Providers

| Name                                                | Version  |
|-----------------------------------------------------|----------|
| <a name="provider_aws"></a> [aws](#provider\_aws)   | >= 5.1.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                     | Type     |
|----------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [aws_cognito_identity_pool.this](https://registry.terraform.io/providers/hashicorp/aws/5.1.0/docs/resources/cognito_identity_pool)                       | resource |

## Inputs

| Name                                                                                                                                                                              | Description                                                                                                                                                                          | Type                                                                                                                                                                              | Default | Required |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create)                                                                                                                              | Controls if resources should be created (affects nearly all resources)                                                                                                               | `bool`                                                                                                                                                                            | `true`  |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                                                                    | A map of tags to add to all resources                                                                                                                                                | `map(string)`                                                                                                                                                                     | `{}`    |    no    |
| <a name="input_name"></a> [name](#input\_name)                                                                                                                                    | The Cognito Identity Pool name                                                                                                                                                       | `string`                                                                                                                                                                          | n/a     |   yes    |
| <a name="input_allow_unauthenticated_identities"></a> [allow\_unauthenticated\_identities](#input\_allow\_unauthenticated\_identities)                                            | Whether the identity pool supports unauthenticated logins or not                                                                                                                     | `bool`                                                                                                                                                                            | `false` |    no    |
| <a name="input_allow_classic_flow"></a> [allow\_classic\_flow](#input\_allow\_classic\_flow)                                                                                      | Enables or disables the classic / basic authentication flow                                                                                                                          | `bool`                                                                                                                                                                            | `false` |    no    |
| <a name="input_developer_provider_name"></a> [developer\_provider\_name](#input\_developer\_provider\_name)                                                                       | The 'domain' by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider | `string`                                                                                                                                                                          | `null`  |    no    |
| <a name="input_openid_connect_provider_arns"></a> [openid\_connect\_provider\_arns](#input\_openid\_connect\_provider\_arns)                                                      | Set of OpendID Connect provider ARNs                                                                                                                                                 | `list(string)`                                                                                                                                                                    | `null`  |    no    |
| <a name="input_saml_provider_arns"></a> [saml\_provider\_arns](#input\_saml\_provider\_arns)                                                                                      | An array of Amazon Resource Names (ARNs) of the SAML provider for your identity                                                                                                      | `list(string)`                                                                                                                                                                    | `null`  |    no    |
| <a name="input_supported_login_providers"></a> [supported\_login\_providers](#input\_supported\_login\_providers)                                                                 | Key-Value pairs mapping provider names to provider app IDs                                                                                                                           | `map(string)`                                                                                                                                                                     | `null`  |    no    |
| <a name="input_cognito_identity_providers"></a> [cognito\_identity\_providers](#input\_cognito\_identity\_providers)                                                              | A list of Amazon Cognito Identity user pools and their client IDs                                                                                                                    | <pre>list(object({<br/>  client_id               = optional(string)<br/>  provider_name           = optional(string)<br/>  server_side_token_check = optional(bool)<br/>}))</pre> | `[]`    |    no    |

## Outputs

| Name                                          | Description                  |
|-----------------------------------------------|------------------------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the identity pool |
| <a name="output_id"></a> [id](#output\_id)    | An identity pool ID          |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-azurerm-linux-web-app/tree/main/LICENSE)
