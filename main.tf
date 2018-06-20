locals {
  create_ecr_repository_policy = "${var.ecr_repository_policy == "" ? false : true}"
  create_ecr_lifecycle_policy = "${var.ecr_lifecycle_policy == "" ? false : true}"
}

module "ecr_repository" {
  source     = "./modules/ecr_repository"

  name       = "${var.identifier}"
}

module "ecr_repository_policy" {
  source     = "./modules/ecr_repository_policy"
  
  create     = "${local.create_ecr_repository_policy}"

  repository = "${module.ecr_repository.this_ecr_repository_name}"
  policy     = "${var.ecr_repository_policy}"
}

module "ecr_lifecycle_policy" {
  source     = "./modules/ecr_lifecycle_policy"

  create     = "${local.create_ecr_lifecycle_policy}"

  repository = "${module.ecr_repository.this_ecr_repository_name}"
  policy     = "${var.ecr_lifecycle_policy}"
}
