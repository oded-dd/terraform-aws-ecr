variable "create" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "repository" {
  description = "(Required) Name of the repository to apply the policy"
  type        = "string"
}

variable "policy" {
  description = "(Optional) A valid policy JSON document"
  type        = "string"
  default     = ""
}
