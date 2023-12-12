USE Elitemotors;
SELECT dealerships.address, dealerships.`Name`, vehicles.`Year`, vehicles.Make, Vehicles.Model, Vehicles.Color, Vehicles.Vin, vehicles.Sold
From Inventory
INNER JOIN dealerships ON inventory.Id = dealerships.Id
INNER JOIN vehicles ON inventory.Vin = vehicles.Vin
WHERE inventory.Vin = 333;
