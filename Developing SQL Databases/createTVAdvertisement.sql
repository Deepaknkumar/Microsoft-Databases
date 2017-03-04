CREATE TABLE TVAdvertisement
(
TV_Station nvarchar(15) NOT NULL PRIMARY KEY,
City nvarchar(25) NOT NULL,
CostPerAdvertisement float NOT NULL,
TotalCostOfAllAdvertisements float NOT NULL,
NumberOfAdvertisements varchar(4) NOT NULL,
Date_Of_Advertisement_1 varchar(12) NULL,
Time_Of_Advertisement_1 int NULL,
Date_Of_Advertisement_2 varchar(12) NULL,
Time_Of_Advertisement_2 int NULL,
Date_Of_Advertisement_3 varchar(12) NULL,
Time_Of_Advertisement_3 int NULL,
Date_Of_Advertisement_4 varchar(12) NULL,
Time_Of_Advertisement_4 int NULL,
Date_Of_Advertisement_5 varchar(12) NULL,
Time_Of_Advertisement_5 int NULL,
);