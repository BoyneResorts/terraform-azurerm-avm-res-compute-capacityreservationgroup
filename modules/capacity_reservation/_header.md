# Capacity Reservation Submodule

This submodule creates individual Capacity Reservations within a Capacity Reservation Group. 

Capacity Reservations allow you to reserve specific VM SKUs in particular availability zones, ensuring that you have guaranteed compute capacity available when you need it.

## Usage

This submodule should be used in conjunction with the main capacity reservation group module. The capacity reservation group must be created first, and then this submodule can be used to add one or more capacity reservations to it.
