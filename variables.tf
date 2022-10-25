variable "iam_role_name" {
  type        = string
  description = "IAM role name"
}

variable "iam_role_description" {
  type        = string
  description = "IAM role description"
}

variable "iam_role_assume_role_policy" {
  type        = string
  description = "Assume role policy of IAM role (json format)"
}

variable "iam_role_permissions_boundary" {
  description = "IAM permissions boundary"
  type        = string
  default     = ""
}

variable "iam_role_path" {
  description = "IAM role path"
  type        = string
  default     = "/"
}

variable "iam_policy_name" {
  type        = string
  description = "IAM policy name"
}

variable "iam_policy_description" {
  type        = string
  description = "IAM policy description"
}

variable "iam_policy_policy" {
  type        = string
  description = "IAM policy (json format)"
}
