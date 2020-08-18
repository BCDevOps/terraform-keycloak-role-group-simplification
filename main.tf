provider "keycloak" {
	client_id = var.terraform_auth_client_id
	client_secret = var.terraform_auth_client_secret
	realm = var.realm
	url = var.keycloak_base_url
}

locals {
	iam_arn_prefix = "arn:aws:iam"
	saml_provider = "saml-provider"
	role = "role"

	role_account_permutations = [for role_account in setproduct(var.accounts, var.role_names) :  {
		account_number = role_account[0].account_number
		role_name = role_account[1]
		project_identifier = role_account[0].project_identifier
		project_name = role_account[0].project_name
		name = role_account[0].name
		environment = role_account[0].environment
	}
	]
}


resource "keycloak_role" "roles" {
	for_each = {
	for role_account in local.role_account_permutations : "${role_account.account_number}/${role_account.role_name}" => role_account
	}
	realm_id = var.realm
	client_id = var.iam_auth_client_id
	name = "${local.iam_arn_prefix}::${each.value.account_number}:${local.saml_provider}/${var.idp_name},${local.iam_arn_prefix}::${each.value.account_number}:${local.role}/${each.value.role_name}"
	description = "'${each.value.role_name}' role for account '${each.value.account_number}', the '${each.value.environment}' environment for project '${each.value.project_name}' with identifier '${each.value.project_identifier}'"
}
