output "resource_groups" {
  description = "Summary of created resource groups."
  value = {
    for k, rg in module.azure_rg.rg : k => {
      id       = rg.id
      name     = rg.name
      location = rg.location
    }
  }
}
