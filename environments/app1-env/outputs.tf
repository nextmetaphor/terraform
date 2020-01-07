locals {
  // valid workspace values
  ENV_PROD = "prod"
  ENV_DEV = "default"

  // maps for each of the environments, keyed by the values above
  output1_map = {
    (local.ENV_DEV) = "dev",
    (local.ENV_PROD) = "prod"
  }

  output2_map = {
    (local.ENV_DEV) = 1,
    (local.ENV_PROD) = 10
  }
}

output "output1" {
  value = lookup(local.output1_map, terraform.workspace)
}

output "output2" {
  value = lookup(local.output2_map, terraform.workspace)
}