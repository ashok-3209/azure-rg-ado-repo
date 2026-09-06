rgs = {
  rg1 = {
    name     = "rg-dev-app-eastus"
    location = "eastus"
    tags = {
      environment = "dev"
      workload    = "application"
      managed_by  = "terraform"
    }
  },
  rg2 = {
    name     = "rg-dev-db-eastus"
    location = "eastus"
    tags = {
      environment = "dev"
      workload    = "database"
      managed_by  = "terraform"
    }
  },
}

