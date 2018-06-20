variable "identifier" {
  description = "(Required) backend name identifier"
  type        = "string"
}

variable "ecr_repository_policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = ""
}

variable "ecr_lifecycle_policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = ""
}
