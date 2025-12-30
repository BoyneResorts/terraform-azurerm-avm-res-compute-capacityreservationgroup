## Section to provide a random Azure region for the resource group
# This allows us to randomize the region for the resource group.
module "regions" {
  source  = "Azure/avm-utl-regions/azurerm"
  version = "~> 0.1"
}

# This allows us to randomize the region for the resource group.
resource "random_integer" "region_index" {
  max = length(module.regions.regions) - 1
  min = 0
}
## End of section to provide a random Azure region for the resource group

# This ensures we have unique CAF compliant names for our resources.
module "naming" {
  source  = "Azure/naming/azurerm"
  version = "~> 0.3"
}

# This is required for resource modules
resource "azurerm_resource_group" "this" {
  location = module.regions.regions[random_integer.region_index.result].name
  name     = module.naming.resource_group.name_unique
}

# Create the Capacity Reservation Group with Capacity Reservations
# This single module call creates both the group and the reservations within it
module "capacity_reservation_group" {
  source = "../../"

  capacity_reservation_group_name = local.capacity_reservation_group_name
  location                        = azurerm_resource_group.this.location
  resource_group_id               = azurerm_resource_group.this.id
  subscription_id                 = local.subscription_id
  tags                            = local.tags

  # Create capacity reservations within the group
  capacity_reservations = {
    reservation1 = {
      name = local.capacity_reservation_name
      sku  = local.sku
      zones = local.zones
    }
  }
}
