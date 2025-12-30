# capacity reservation group ID output
output "capacity_reservation_group_id" {
  description = "The ID of the capacity reservation group"
  value       = module.capacity_reservation_group.capacity_reservation_group_id
}

# capacity reservations output
output "capacity_reservations" {
  description = "Map of capacity reservations created within the group"
  value       = module.capacity_reservation_group.capacity_reservations
}
