output "roles" {
	value = [ for role in keycloak_role.roles : merge(role, {
		account_number = split(":", split(",", role.name))[2]
	}) ]
}
