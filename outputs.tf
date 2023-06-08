################################################################################
# Cognito identity pool
################################################################################

output "arn" {
  description = "The ARN of the identity pool"
  value       = try(aws_cognito_identity_pool.this[0].arn, null)
}

output "id" {
  description = "An identity pool ID"
  value       = try(aws_cognito_identity_pool.this[0].id, null)
}

