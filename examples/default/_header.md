# Default example

This example demonstrates how to create a Capacity Reservation Group along with a Capacity Reservation.

**Note:** This module creates the Capacity Reservation Group. Individual capacity reservations are created using the `capacity_reservation` submodule, as shown below. This two-step approach is necessary because:
1. The Capacity Reservation Group must exist before reservations can be added to it
2. Multiple capacity reservations can be created in the same group with different SKUs and configurations
