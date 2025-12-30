# terraform-azurerm-avm-res-compute-capacityreservationgroup

This Terraform module provisions an Azure Capacity Reservation Group, which allows you to reserve compute capacity in Azure regions and availability zones. Capacity Reservation Groups help ensure that you have guaranteed compute resources available when you need them.

## Features

- Creates Azure Capacity Reservation Groups with configurable availability zones
- Supports sharing capacity reservations across subscriptions
- Includes AVM-compliant interfaces for role assignments, locks, and tags
- Provides a submodule for creating individual capacity reservations within the group

## Usage

This module creates the Capacity Reservation Group. To add individual capacity reservations to the group, use the `capacity_reservation` submodule (see examples).

For detailed usage examples, please refer to the [examples](./examples) directory.
