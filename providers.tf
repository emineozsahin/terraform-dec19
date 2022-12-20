# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.35.0"
    }
  }

  backend "remote" {
    organization = "emine"

    workspaces {
      name = "dec19_terraform_test"
    }
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

