The aim of the `app-env` module is to provide a practical mechanism compliant with the "[config](https://12factor.net/config)" factor of the [12 Factor App](https://12factor.net), which ensures that the environment configuration of the application is controlled separately from the application code itself.

However, in general it is useful to store the (non-sensitive) environment configuration for an application within source control; it is important, however, that these are logically separate and that changes to environment configuration do not implicitly require a change to the application. 

The `app-env` module provides this separation as follows:
* a Terraform `variable` is declared for **every** environment parameter that is required
  *  If the actual value for an environment parameter is sensitive and **must not** be defined in source control and instead must always be passed at runtime, **no default value** should be declared.
  
  * If the environment is non-sensitive, a 'null value' applicable to the type of the parameter should be returned. For example, `""` for a `string` type. 
* For each `variable` defined, a corresponding Terraform `output` is also defined

* The `output` Terraform

The premise used here for an "app-env" module is...
* ...
 
  * 
  *   
* ...Terraform workspaces are used to determine the environment, and can be ascertained from the code using `terraform.workspace`
* ...using workspaces helps with locking files TODO
* ...for each TODO
* ...has an advantage over [Variable Definitions (tfvars) files](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files) TODO