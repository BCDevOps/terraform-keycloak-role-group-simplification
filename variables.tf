variable "realm" {
	description = "KeyCloak realm where terraform client has been created and where users/groups to be created/manipulated exist."
	type        = string
}

variable "terraform_auth_client_id" {
	description = "Client ID of client that terraform will authenticate against in order to do its work."
	type        = string
}

variable "terraform_auth_client_secret" {
	description = "Client secret used by Terraform KeyCloak provider authenticate against KeyCloak."
	type = string
}

variable "iam_auth_client_id" {
	description = "Client ID of client where IAM roles will be created."
	type        = string
}

variable "keycloak_base_url" {
	description = "Base URL of KeyCloak instance to interact with."
	type = string
}

variable "accounts" {
	description = "List of accounts that product teams' workloads run within."
	type = list(object({
		project_identifier = string
		project_name = string
		name = string
		environment = string
		account_number = string
	}))
}

//IAM roles names
variable "role_names" {
	description = "A list of the role names in the IAM system.  These will be used along with other elelments to construct the KC role names."
	type = list(string)
}

variable "idp_name" {
	description = "Name of configured IDP in AWS."
	type = string
	default = "BCGovKeyCloak"
}

