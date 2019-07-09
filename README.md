# Netic AWS IAM Accounts Terraform Module

## Supported Terraform Versions

Terraform 0.12

## Usage

```hcl
module "aws_account" {
  source = "github.com/neticdk/tf-aws-iam-account"

  account_alias = "My Account"

  minimum_password_length        = 20
  max_password_age               = 30
  hard_expiry                    = true
  allow_users_to_change_password = false
  password_reuse_prevention      = 10
  require_lowercase_characters   = true
  require_uppercase_characters   = true
  require_numbers                = true
  require_symbols                = true
}
```
<!---BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK--->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_alias | The account alias for the AWS Account | string | n/a | yes |
| allow\_users\_to\_change\_password | Whether to allow users to change their own password | string | `"true"` | no |
| hard\_expiry | Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset) | string | `"false"` | no |
| max\_password\_age | The number of days that an user password is valid | string | `"365"` | no |
| minimum\_password\_length | Minimum length to require for user passwords | string | `"12"` | no |
| password\_reuse\_prevention | The number of previous passwords that users are prevented from reusing | string | `"1"` | no |
| require\_lowercase\_characters | Whether to require lowercase characters for user passwords | string | `"false"` | no |
| require\_numbers | Whether to require numbers for user passwords | string | `"false"` | no |
| require\_symbols | Whether to require symbols for user passwords | string | `"false"` | no |
| require\_uppercase\_characters | Whether to require uppercase characters for user passwords | string | `"false"` | no |
| tags | A map of tags to add to all resources | map | `<map>` | no |

<!---END OF PRE-COMMIT-TERRAFORM DOCS HOOK--->

# Copyright
Copyright (c) 2019 Netic A/S. All rights reserved.

# License
MIT Licened. See LICENSE for full details.

