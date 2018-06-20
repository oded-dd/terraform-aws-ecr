# aws_ecr_repository

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | (Required) Name of the repository | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this_ecr_repository_arn | Full ARN of the repository |
| this_ecr_repository_name | The name of the repository |
| this_ecr_repository_registry_id | The registry ID where the repository was created |
| this_ecr_repository_repository_url | The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
