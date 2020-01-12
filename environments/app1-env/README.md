The aim here is to be compliant with "[Config](https://12factor.net/config)": the third factor of the [12 Factor App](https://12factor.net), and ensure that the config is separated from the code.

In general, it is useful to store the configuration for the various environments in which the code will be used within source control; it is important, however, that changes to environment parameters do not require changes to the code module itself. 

The premise used here for an "app-env" module is...
* ...for each output value being returned, an input parameter is also defined.
 
  * If the actual value for a particular environment **must not** be defined in source control and instead must always be passed at runtime, **no default value** should be declared. 
  * If this is not the case, a 'null value' applicable to the type of the parameter should be returned. For example, `""` for a `string` type.  
* ...Terraform workspaces are used to determine the environment, and can be ascertained from the code using `terraform.workspace`
* ...using workspaces helps with locking files TODO
* ...for each TODO
* ...has an advantage over [Variable Definitions (tfvars) files](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files) TODO