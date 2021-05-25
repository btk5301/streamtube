terraform {
    backend "azurerm" {                       
        resource_group_name  = "terrastore"    
        storage_account_name = "testore"    
        container_name       = "terraform"    
        key = "terraform.tfstate"             
    }                                         
}