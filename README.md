
# <application_license_badge>
<!--- [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE) --->

# BC Gov Terraform Template

This repo provides a starting point for users who want to create valid Terraform modules stored in GitHub.  

## Third-Party Products/Libraries used and the licenses they are covered by
<!--- product/library and path to the LICENSE --->
<!--- Example: <library_name> - [![GitHub](<shield_icon_link>)](<path_to_library_LICENSE>) --->

## Project Status

- [x] Development
- [ ] Production/Maintenance

# Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_keycloak"></a> [keycloak](#requirement\_keycloak) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_keycloak"></a> [keycloak](#provider\_keycloak) | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [keycloak_role.roles](https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs/resources/role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accounts"></a> [accounts](#input\_accounts) | List of accounts that product teams' workloads run within. | <pre>list(object({<br>    project_identifier = string<br>    project_name       = string<br>    name               = string<br>    environment        = string<br>    account_number     = string<br>  }))</pre> | n/a | yes |
| <a name="input_iam_auth_client_id"></a> [iam\_auth\_client\_id](#input\_iam\_auth\_client\_id) | Client ID of client where IAM roles will be created. | `string` | n/a | yes |
| <a name="input_idp_name"></a> [idp\_name](#input\_idp\_name) | Name of configured IDP in AWS. | `string` | `"BCGovKeyCloak"` | no |
| <a name="input_realm"></a> [realm](#input\_realm) | KeyCloak realm where terraform client has been created and where users/groups to be created/manipulated exist. | `string` | n/a | yes |
| <a name="input_role_names"></a> [role\_names](#input\_role\_names) | A list of the role names in the IAM system.  These will be used along with other elelments to construct the KC role names. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_roles"></a> [roles](#output\_roles) | n/a |
<!-- END_TF_DOCS -->

## Getting Started
<!--- setup env vars, secrets, instructions... --->

## Getting Help or Reporting an Issue
<!--- Example below, modify accordingly --->
To report bugs/issues/feature requests, please file an [issue](../../issues).


## How to Contribute
<!--- Example below, modify accordingly --->
If you would like to contribute, please see our [CONTRIBUTING](./CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md). 
By participating in this project you agree to abide by its terms.


## License
<!--- Example below, modify accordingly --->
    Copyright 2018 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
