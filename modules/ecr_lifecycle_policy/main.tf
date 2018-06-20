resource "aws_ecr_lifecycle_policy" "this" {
  count      = "${var.create ? 1 : 0 }"

  repository = "${var.repository}"
  policy     = "${var.policy}"
}
