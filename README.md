# AWS ECR Terraform module

[![Open Source Helpers](https://www.codetriage.com/oded-dd/terraform-aws-ecr/badges/users.svg)](https://www.codetriage.com/oded-dd/terraform-aws-ecr)

Terraform module which creates ECR repository resources on AWS

These types of resources are supported:

* [ECR repository](https://www.terraform.io/docs/providers/aws/r/ecr_repository.html)
* [ECR repository policy](https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html)
* [ECR repository lifecycle](https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html)

Root module calls these modules which can also be used separately to create independent resources:

* [ecr_repository](https://github.com/oded-dd/terraform-aws-ecr/tree/master/modules/ecr_repository) - creates ECR repository resource
* [ecr_repository_policy](https://github.com/oded-dd/terraform-aws-ecr/tree/master/modules/ecr_repository_policy) - creates ECR repository policy resource
* [ecr_lifecycle_policy](https://github.com/oded-dd/terraform-aws-ecr/tree/master/modules/ecr_lifecycle_policy) - creates ECR lifecycle policy resource

## Usage
```hcl
module "test-repo" {
  source = "github.com/oded-dd/terraform-aws-ecr"

  identifier = "test"

  # ... omitted
}
```

## Conditional creation

There is also a way to create ecr_repository policy and/or ecr_lifecycle_policy:

```hcl
module "test-repo" {
  source = "github.com/oded-dd/terraform-aws-ecr"

  identifier = "test"

  ecr_lifecycle_policy = <<EOF
{
  "rules": [
    {
      "rulePriority": 10,
      "description": "Keep last 3 images",
      "selection": {
        "tagStatus": "tagged",
        "tagPrefixList": [
          "test"
        ],
        "countType": "imageCountMoreThan",
        "countNumber": 3
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
EOF

  # ... omitted
}
```

```hcl
module "test-repo" {
  source = "github.com/oded-dd/terraform-aws-ecr"

  identifier = "test"

  ecr_repository_policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "AllActionsAllow",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ]
    }
  ]
}
EOF

  # ... omitted
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ecr_lifecycle_policy | (Optional) A valid bucket policy JSON document | string | `` | no |
| ecr_repository_policy | (Optional) A valid bucket policy JSON document | string | `` | no |
| identifier | (Required) backend name identifier | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this_ecr_repository_arn | Full ARN of the repository |
| this_ecr_repository_name | The name of the repository |
| this_ecr_repository_repository_url | The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Oded David](https://github.com/oded-dd).

## License

Apache 2 Licensed. See LICENSE for full details.
