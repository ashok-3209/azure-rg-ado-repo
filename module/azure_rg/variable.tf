variable "rg" {
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  }))
  description = "Map of Azure Resource Groups to be created."
}

