variable "group_id" {
  type        = string
  description = "The UUID of the group to which to add users."
}
variable "members" {
  type        = list(string)
  description = "A list of UPNs to add to the group."
}
