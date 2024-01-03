resource "azurerm_subnet" "mysubnt" {
  count = 3
  name = "mysubnet-${count.index}"
  resource_group_name = azurerm_resource_group.myrg.name
  address_prefixes = ["10.0.${count.index}.0/24"]
  virtual_network_name = azurerm_virtual_network.myvn.name
}