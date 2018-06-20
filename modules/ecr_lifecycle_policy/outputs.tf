output "this_ecr_lifecycle_policy_repository" {
  description = "The name of the repository"
  value       = "${element(concat(aws_ecr_lifecycle_policy.this.*.repository, list("")), 0)}"
}

output "this_ecr_lifecycle_policy_registry_id" {
  description = "The registry ID where the repository was created"
  value       = "${element(concat(aws_ecr_lifecycle_policy.this.*.registry_id, list("")), 0)}"
}
