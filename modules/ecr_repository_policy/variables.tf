variable "create" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "repository" {
  description = "(Required) Name of the repository to apply the policy"
  type        = "string"
}

variable "policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = <<EOF
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
}
