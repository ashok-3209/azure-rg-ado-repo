$CsvPath = ".\resources.csv"
$OutputPath = ".\terraform.auto.tfvars"

# Import CSV data
$csvData = Import-Csv -Path $CsvPath

# Build the HCL structure using StringBuilder for efficiency
$hcl = [System.Text.StringBuilder]::new()
[void]$hcl.AppendLine("rgs = {")

foreach ($row in $csvData) {
    [void]$hcl.AppendLine("  $($row.Key) = {")
    [void]$hcl.AppendLine("    name     = `"$($row.Name)`"")
    [void]$hcl.AppendLine("    location = `"$($row.Location)`"")
    [void]$hcl.AppendLine("    tags = {")
    [void]$hcl.AppendLine("      environment = `"$($row.Environment)`"")
    [void]$hcl.AppendLine("      workload    = `"$($row.Workload)`"")
    [void]$hcl.AppendLine("      managed_by  = `"$($row.ManagedBy)`"")
    [void]$hcl.AppendLine("    }")
    [void]$hcl.AppendLine("  },")
}

[void]$hcl.AppendLine("}")

# Export to tfvars file
$hcl.ToString() | Out-File -FilePath $OutputPath -Encoding utf8
Write-Host "Terraform variables file successfully generated at: $OutputPath" -ForegroundColor Green