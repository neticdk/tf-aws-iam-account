/*
 * Copyright (c) 2019 Netic A/S. All rights reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

locals {
  tags = {
    Terraform = "true"
  }
}

resource "aws_iam_account_password_policy" "this" {
  minimum_password_length        = var.minimum_password_length
  max_password_age               = var.max_password_age
  hard_expiry                    = var.hard_expiry
  allow_users_to_change_password = var.allow_users_to_change_password
  password_reuse_prevention      = var.password_reuse_prevention
  require_lowercase_characters   = var.require_lowercase_characters
  require_uppercase_characters   = var.require_uppercase_characters
  require_numbers                = var.require_numbers
  require_symbols                = var.require_symbols
}

resource "aws_iam_account_alias" "this" {
  count = var.create_account_alias ? 1 : 0

  account_alias = var.account_alias
}
