output "capacity_reservation_group_id" {
  description = "The ID of the capacity reservation group"
  value       = azapi_resource.capacity_reservation_group.id
}

output "capacity_reservations" {
  description = "A map of capacity reservations created within the group"
  value       = module.capacity_reservations
}

# Required AVM output per RMFR7
output "resource_id" {
  description = "The resource ID of the capacity reservation group"
  value       = azapi_resource.capacity_reservation_group.id
}
