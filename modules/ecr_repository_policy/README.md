# aws_ecr_repository_policy

NOTE on ECR Availability: The EC2 Container Registry is not yet rolled out in all regions - available regions are listed the AWS Docs.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| policy | (Optional) A valid bucket policy JSON document | string | `{   "Version": "2008-10-17",   "Statement": [     {       "Sid": "AllActionsAllow",       "Effect": "Allow",       "Principal": {         "AWS": "*"       },       "Action": [         "ecr:GetDownloadUrlForLayer",         "ecr:BatchGetImage",         "ecr:BatchCheckLayerAvailability",         "ecr:PutImage",         "ecr:InitiateLayerUpload",         "ecr:UploadLayerPart",         "ecr:CompleteLayerUpload"       ]     }   ] } ` | no |
| repository | (Required) Name of the repository to apply the policy | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this_ecr_repository_policy_registry_id | The registry ID where the repository was created |
| this_ecr_repository_policy_repository | The name of the repository |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
