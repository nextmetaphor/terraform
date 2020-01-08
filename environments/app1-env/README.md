The aim here is to be compliant with "[Config](https://12factor.net/config)": the third factor of the [12 Factor App](https://12factor.net), and ensure that the config is separated from the code.

In general, it is useful to store the configuration for the various environments in which code can be used in source control; it is important, however, that this is isolated from the actual code TODO

The premise used here for an "app-env" module is...
* ...for each output value being returned, an input parameters is defined
* ...Terraform workspaces are used to determine the environment, and can be ascertained from the code using `terraform.workspace`
* ...using workspaces helps with locking files TODO
* ...for each TODO
* ...has an advantage over [Variable Definitions (tfvars) files](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files) TODO