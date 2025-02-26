terraform {
  required_version = ">=1.6.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"      
    }    
  }
}

provider "azurerm" {
  features {    
  }
}
resource "azurerm_storage_account" "cm_stg_acct" {
  name                     = "cmstgacct"
  resource_group_name      = "{YOUR RESOURCE GROUP NAME}"
  location                 = "{YOUR RESOURCE GROUP LOCATION}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
