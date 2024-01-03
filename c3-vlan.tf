resource "azurerm_virtual_network" "myvn" {
  name = "myvnet-test-01"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  depends_on = [ azurerm_resource_group.myrg ]
  address_space = ["10.0.0.0/8"]
}