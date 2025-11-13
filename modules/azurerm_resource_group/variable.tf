variable "rgs" {
  type = map(object({
    name     = string
    location = string
    tags = object({
      owner        = string
      credit_limit = string
      }
    )
  }))
}
