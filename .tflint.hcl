#plugins
plugin "terraform" {
    enabled = true
    version = "0.2.2"
    source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}

plugin "azurerm" {
    enabled = true
    version = "0.22.0"
    source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# rules
# Enforces naming conventions
rule "terraform_naming_convention" {
  enabled = true
  
  #Require specific naming structure
  variable {
  format = "snake_case"
  }
  
  locals {
  format = "snake_case"
  }
  
  output {
  format = "snake_case"
  }
}

# Disallow variable declarations without description.
rule "terraform_documented_variables" {
  enabled = true
}
 
# Disallow variable declarations without type.
rule "terraform_typed_variables" {
  enabled = true
}

# Disable standard module rules
rule "terraform_standard_module_structure" {
  enabled = false
}

# Disable unused declarations, caught in validate
rule "terraform_unused_declarations" {
  enabled = false
}
