SELECT s.SCID, s.FirstName, s.LastName, s.phone, s.email, s.salesDate, s.Vin
FROM Sales_Contract s
JOIN Inventory i ON s.Vin = i.Vin
LEFT JOIN dealerships d ON i.Id = d.Id
WHERE d.`Name` LIKE "Velocity Autos" AND s.`Date` BETWEEN `2019-04-01` AND `2019-04-30`;