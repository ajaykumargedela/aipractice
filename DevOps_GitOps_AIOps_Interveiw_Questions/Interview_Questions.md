# Terraform Interview Setup - Questions

1. Error: Inconsistent dependency lock file

The following dependency selections recorded in the lock file are
inconsistent with the current configuration:
  - provider registry.terraform.io/hashicorp/azurerm: required by this configuration but no version is selected

To make the initial dependency selections that will initialize the dependency
lock file, run:
  terraform init


2. unable to build authorizer for Resource Manager API: could not configure AzureCli Authorizer: tenant ID was not specified and the default tenant ID could not be determined: obtaining tenant ID: obtaining account details: running Azure CLI: exit status 1: ERROR: Please run 'az login' to setup account.

Solution:

For CI/CD, it is highly recommended to use Service Account or Service Principals or Managed Identities by setting the following environment variables instead of relying on az login:



