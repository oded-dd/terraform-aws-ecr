output "this_ecr_repository_name" {
  description = "The name of the repository"
  value       = "${element(split(",", join(",", aws_ecr_repository.this.name)), 0)}"
}

output "this_ecr_repository_arn" {
  description = "Full ARN of the repository"
  value       = "${element(split(",", join(",", aws_ecr_repository.this.arn)), 0)}"
}

output "this_ecr_repository_registry_id" {
  description = "The registry ID where the repository was created"
  value       = "${element(split(",", join(",", aws_ecr_repository.this.registry_id)), 0)}"
}

output "this_ecr_repository_repository_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName"
  value       = "${element(split(",", join(",", aws_ecr_repository.this.repository_url)), 0)}"
}

