# terraform-azurerm-avm-res-compute-capacityreservationgroup

This Terraform module provisions an Azure Capacity Reservation Group, which allows you to reserve compute capacity in Azure regions and availability zones. Capacity Reservation Groups help ensure that you have guaranteed compute resources available when you need them.

## Features

- Creates Azure Capacity Reservation Groups with configurable availability zones
- Supports creating multiple capacity reservations within the group using the `capacity_reservations` variable
- Supports sharing capacity reservations across subscriptions
- Includes AVM-compliant interfaces for role assignments, locks, and tags
- Provides a submodule for advanced scenarios requiring direct capacity reservation management

## Usage

This module creates the Capacity Reservation Group and can optionally create capacity reservations within it using the `capacity_reservations` variable (recommended). For advanced scenarios, you can also use the `capacity_reservation` submodule directly.

For detailed usage examples, please refer to the [examples](./examples) directory.
