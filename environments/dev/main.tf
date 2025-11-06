terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.41.0"
    }
  }
#   backend "azurerm" {
#     tenant_id = "e36e2232-cac4-497a-9243-862b9b46221b"
#     key = "dev.terraform.tfstate"
#     storage_account_name = ""
#     container_name = "tfstate"
#   }
}

provider "azurerm" {
  subscription_id = "06f4c176-e41e-424a-bfc2-cb4b3a4e5fe5"
  features {
    
  }
}