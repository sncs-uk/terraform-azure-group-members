# Azure group membership Terraform module

Terraform module which adds members to a group using their UPN.


## Usage
```hcl
module "example" {
  source        = "github.com/sncs-uk/terraform-azure-group-members"
  group_id      = "e6f2f038-bd0b-48e5-a0e8-f87c86a5059e"
  members       = ["joe.bloggs@example.com", "jane.doe@example.com"]
}
```

## Requirements
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 2.39 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | >= 2.39 |
