resource "aws_iam_role" "this" {
  name                  = var.iam_role_name
  description           = var.iam_role_description
  assume_role_policy    = var.iam_role_assume_role_policy
  path                  = var.iam_role_path
  force_detach_policies = true
  permissions_boundary  = var.iam_role_permissions_boundary
}

resource "aws_iam_policy" "this" {
  name        = var.iam_policy_name
  description = var.iam_policy_description
  policy      = var.iam_policy_policy
}

resource "aws_iam_role_policy_attachment" "this" {
  policy_arn = aws_iam_policy.this.arn
  role       = aws_iam_role.this.name
}
