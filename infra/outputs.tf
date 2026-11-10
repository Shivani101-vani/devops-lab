output "app_url" {
  value = "http://${module.lb.public_ip}"
}

output "vm_name" {
  value = module.vm.vm_name
}

output "resource_group" {
  value = azurerm_resource_group.rg.name
}
