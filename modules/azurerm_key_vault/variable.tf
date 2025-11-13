variable "keyvaults" {
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        enabled_for_disk_encryption = bool
    }))
  
}