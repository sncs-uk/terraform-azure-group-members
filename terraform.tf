terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.39"
    }
  }
}

data "azuread_user" "members" {
  for_each = toset(var.members)
  user_principal_name = each.key
}

resource "azuread_group_member" "members" {
  for_each = data.azuread_user.members
  group_object_id  = var.group_id
  member_object_id = each.value.id
}
