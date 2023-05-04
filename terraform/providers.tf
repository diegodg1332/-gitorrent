terraform {
    required_version = "v1.4.6"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.0"
        }
        random = {
            source = "hasicorp/random"
            version = "~>3.0"
        }
    }
}
 provider "azurerm" {
    features {}
 }