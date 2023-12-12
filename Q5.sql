USE elitemotors;

SELECT dealerships.`Name`, dealerships.Address, dealerships.phone 
FROM dealerships
INNER JOIN inventory 
ON dealerships.Id = inventory.Id
INNER JOIN vehicles
ON inventory.Vin = vehicles.Vin
WHERE vehicles.Make LIKe `%Toyota%`;