output "this_ecr_repository_name" {
  description = "The name of the repository"
  value       = "${module.ecr_repository.this_ecr_repository_name}"
}

output "this_ecr_repository_arn" {
  description = "Full ARN of the repository"
  value       = "${module.ecr_repository.this_ecr_repository_arn}"
}

output "this_ecr_repository_repository_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName"
  value       = "${module.ecr_repository.this_ecr_repository_repository_url}"
}
