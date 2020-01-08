locals {
  // valid workspace literals
  ENV_PROD = "prod"
  ENV_DEV  = "default"

  // maps for each of the environments, keyed by the values above
  http_listen_port_map = {
    (local.ENV_DEV)  = 8080,
    (local.ENV_PROD) = 80
  }

  hostname_map = {
    (local.ENV_DEV)  = "localhost",
    (local.ENV_PROD) = "prod-server"
  }

  // set the environment-specific values
  default_http_listen_port = lookup(local.http_listen_port_map, terraform.workspace)
  default_http_hostname    = lookup(local.hostname_map, terraform.workspace)
}

output "http_listen_port" {
  value = var.http_listen_port == "" ? local.default_http_listen_port : var.http_listen_port
}

output "hostname" {
  value = var.hostname == "" ? local.default_http_hostname : var.hostname
}

output "db_password" {
  value = var.db_password
}