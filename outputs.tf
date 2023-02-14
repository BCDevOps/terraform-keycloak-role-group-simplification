output "roles" {
  value = [for role in keycloak_role.roles : merge(role, {
    account_number = split(":", split(",", role.name)[0])[4],
    aws_role_name  = split("/", split(":", split(",", role.name)[1])[5])[1],
  })]
}
