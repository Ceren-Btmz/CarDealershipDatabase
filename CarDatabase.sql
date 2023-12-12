DROP DATABASE EliteMotors;
CREATE DATABASE EliteMotors;

create table Dealership (
`Id` int NOT NULL auto_increment,
`Name` varchar(50) NOT NULL,
`Address` varchar(50) NOT NULL,
`Phone` varchar(12) NOT NULL,
primary key (`Id`)
);

create table Vehicles (
`Year` int NOT NULL,
`Make` varchar(50) NOT NULL,
`Model` varchar(50) NOT NULL,
`Color` varchar(50) NOT NULL,
`Vin` bigint NOT NULL primary key,
`Sold` boolean
);

create table Inventory (
`Id` int,
`Vin` bigint NOT NULL, 
foreign key (Id) references Dealership(Id),
foreign key (Vin) references Vehicle(Vin)
);

create table Sales_Contract (
`SCID` integer NOT NULL auto_increment primary key,
`First Name` VARCHAR(20),
`Last Name` VARCHAR(20),
`Phone` VARCHAR(12),
`Email` VARCHAR(50),
`Sales Date` DATE,
`Vin` INTEGER NOT NULL,
foreign key (Vin) references Vehicle(Vin)
);

create table Lease_Contract (
`LCID` integer NOT NULL auto_increment primary key,
`First Name` VARCHAR(20),
`Last Name` VARCHAR(20),
`Phone` VARCHAR(12),
`Email` VARCHAR(50),
`Start Date` DATE,
`End Date` Date, 
`Vin` INTEGER NOT NULL,
foreign key (Vin) references Vehicle(Vin)
);

-- Intering data into Dealership table
INSERT INTO Dealership(Id, `Name`, Address, Phone) VALUES
(`AutoPrestige Motors`, `101 Cedar Road, Harbor City, FL 33123`, `(555) 123-4567`),
(`Velocity Autos`, `789 Maple Street, Rivertiwn, CA 90210`, `(555) 876-5432`),
(`EliteDrive`, `123 Oak Avenue, Cityville, NY 10001`, `(555) 245-9563`);

-- Intering data into Vehicles table
INSERT INTO Vehicles(`Year`, Make, Model, Color, Vin, Sold) VALUES
(2013, `Honda`, `Accord`, `Red`, 111, true),
(2021, `Toyota`, `Camry`, `Black`, 222, false),
(2024, `Mazda`, `CX-5`, `Blue`, 333, false),
(2018, `Kia`, `Nebula S5`, `White`, 444, true),
(2019, `Acura`, `TLX`, `Grey`, 555, true),
(2022, `Toyota`, `Prius`, `Red`, 666, false);

-- Intering data into Inventory table
INSERT INTO Inventory (Id, Vin) VALUES
(1, 111),
(2, 222),
(3, 333),
(1, 444),
(2, 555),
(3, 666);

-- Intering data into Sales_Contract table 
INSERT INTO Sales_Contract (SCID, FirstName, LastName, Phone, Email, SalesDate, Vin) VALUES
(11, `Ashley`, `Jones`, 5161037798, `abc20@aol.com`, 11/11/2010, 111),
(12, `James`, `Smith`, 5162789329, `JamesS29@gmail.com`, 04/23/2019, 444);

-- Intering data into Lease_Contract table
INSERT INTO Lease_Contract (LCID, FirstName, LastName, Phone, Email, Lease_Start_Date, Lease_End_Date, Vin) VALUES
(51, `Bethany`, `Ruth`, 5165839156, `Bruth@aol.com`, 07/18/2023, NULL, 555);

