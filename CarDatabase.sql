DROP DATABASE EliteMotors;
CREATE DATABASE EliteMotors;
create table `Dealership` (
`Id` int NOT NULL auto_increment,
`Name` varchar(50) NOT NULL,
`Address` varchar(50) NOT NULL,
`Phone` varchar(12) NOT NULL,
primary key (`Id`)
);

create table `Vehicles` (
`Year` int NOT NULL,
`Make` varchar(50) NOT NULL,
`Model` varchar(50) NOT NULL,
`Color` varchar(50) NOT NULL,
`Vin` bigint NOT NULL primary key,
`Sold` boolean
);

create table `Inventory` (
`Id` int,
`Vin` bigint NOT NULL, 
foreign key (Id) references Dealership(Id),
foreign key (Vin) references Vehicle(Vin)
);

create table `Sales Contract` (
`SCID` integer NOT NULL auto_increment primary key,
`First Name` VARCHAR(20),
`Last Name` VARCHAR(20),
`Phone` VARCHAR(12),
`Email` VARCHAR(50),
`Sales Date` DATE,
`Vin` INTEGER NOT NULL,
foreign key (Vin) references Vehicle(Vin)
);

create table `Lease Contract` (
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

