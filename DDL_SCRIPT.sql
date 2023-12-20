CREATE TABLE `default`.`BoxOfcDateDim`  (
  `BoxOfcDate_SK` integer NOT NULL,
  `Date` datetime(120) NULL,
  `Year` integer NULL,
  `Month` integer NULL,
  `Day` integer NULL,
  `Season` varchar(2000) NULL,
  `FileName` varchar(255) NULL,
  `CreatedDate` datetime NULL,
  `Job_ID` varchar NULL,
  PRIMARY KEY (`BoxOfcDate_SK`)
);

CREATE TABLE `default`.`BoxOfcFact`  (
  `BoxOfc_SK` int NULL,
  `Title_FK` integer NULL,
  `Total_Gross` longtext NULL,
  `Days` varchar(200) NULL,
  `Gross` longtext NULL,
  `BoxOfcDate_FK` integer NULL,
  `FileName` varchar(255) NULL,
  `JobID` varchar NULL,
  `CreatedDate` datetime NULL
);

CREATE TABLE `default`.`BoxOfficeDim`  (
  `BoxOfc_SK` integer NOT NULL,
  `tconst` varchar(100) NULL,
  `Title` varchar(256) NULL,
  `Rank` varchar(100) NULL,
  `Theaters` varchar(100) NULL,
  `Per_Theatre` varchar(100) NULL,
  `Total_Gross` varchar(100) NULL,
  `Days` varchar(100) NULL,
  PRIMARY KEY (`BoxOfc_SK`)
);

CREATE TABLE `default`.`GenreDim`  (
  `Genre_SK` integer NOT NULL,
  `Genres` varchar(100) NULL,
  `Job_ID` varchar(255) NULL,
  `CreatedDate` datetime NULL,
  `FileName` varchar(255) NULL,
  PRIMARY KEY (`Genre_SK`)
);

CREATE TABLE `default`.`MovieGenreBri`  (
  `MovieGenre_SK` integer NOT NULL,
  `Genre_FK` integer NULL,
  `Title_Fk` integer NULL,
  `Genres` varchar(100) NULL,
  `DI_Created_Date` datetime NULL,
  `FileName` varchar(255) NULL,
  `JobID` varchar(255) NULL,
  PRIMARY KEY (`MovieGenre_SK`)
);

CREATE TABLE `default`.`MovieRegionBri`  (
  `MovieRegion_SK` integer NOT NULL,
  `Title_FK` integer NULL,
  `Region_FK` integer NULL,
  `FileName` varchar(255) NULL,
  `CreatedDate` datetime NULL,
  `JobID` varchar(255) NULL,
  PRIMARY KEY (`MovieRegion_SK`)
);

CREATE TABLE `default`.`NameSCDDim`  (
  `Name_SK` integer NOT NULL,
  `nconst` varchar(50) NULL,
  `PrimaryName` varchar(1000) NULL,
  `PrimaryProfession` varchar(1000) NULL,
  `KnownForTitles` varchar(1024) NULL,
  `SCD_Start` datetime NULL,
  `SCD_End` datetime NULL,
  `SCD_Version` int NULL,
  `SCD_Active` int NULL,
  `FileName` varchar(255) NULL,
  `JobId` varchar NULL,
  `SystemDate` datetime NULL,
  PRIMARY KEY (`Name_SK`)
) COMMENT = 'Dimension Type: Type 2';

CREATE TABLE `default`.`PersonDim`  (
  `Person_SK` integer NOT NULL,
  `nconst` varchar(100) NULL,
  `category` varchar(255) NULL,
  `JobId` varchar NULL,
  `Created_Date` datetime NULL,
  `FileName` varchar(255) NULL,
  PRIMARY KEY (`Person_SK`)
);

CREATE TABLE `default`.`RatingFact`  (
  `Fact_SK` integer NOT NULL,
  `runtimeMinutes` integer NULL,
  `StartYear` integer NULL,
  `averageRating` double(22) NULL,
  `Title_FK` integer NULL,
  `numVotes` integer NULL,
  `DI_Created_Date` datetime NULL,
  `JobID` varchar(255) NULL,
  PRIMARY KEY (`Fact_SK`)
);

CREATE TABLE `default`.`RegionDim`  (
  `Region_SK` integer NOT NULL,
  `Region_Name` varchar(255) NULL,
  `FileName` varchar(255) NULL,
  `CreatedDate` datetime NULL,
  `Job_ID` varchar(255) NULL,
  PRIMARY KEY (`Region_SK`)
);

CREATE TABLE `default`.`TitlePrincipleFact`  (
  `TitlePrinciple_SK` integer NOT NULL,
  `Title_FK` integer NULL,
  `Person_FK` integer NULL,
  `Name_Fk` integer NULL,
  `category` varchar(255) NULL,
  `DI_Created_Date` datetime NULL,
  `JobID` varchar(100) NULL,
  PRIMARY KEY (`TitlePrinciple_SK`)
);

CREATE TABLE `default`.`TitleSCDDim`  (
  `Title_SK` integer NOT NULL,
  `tconst` varchar(255) NULL,
  `PrimaryTitle` varchar(255) NULL,
  `OriginalTitle` varchar(255) NULL,
  `startYear` integer NULL,
  `runtimeMinutes` datetime NULL,
  `TitleType` varchar(255) NULL,
  `SCD_Start` datetime NULL,
  `SCD_End` datetime NULL,
  `SCD_Version` integer NULL,
  `SCD_Active` integer NULL,
  `FileName` varchar(1000) NULL,
  `Job_ID` varchar(100) NULL,
  `SystemDate` datetime NULL,
  PRIMARY KEY (`Title_SK`)
) COMMENT = 'Dimension Type: Type 2';

ALTER TABLE `default`.`BoxOfcFact` ADD CONSTRAINT `BoxOfcDate_FK` FOREIGN KEY () REFERENCES `default`.`BoxOfcDateDim` (`BoxOfcDate_SK`);
ALTER TABLE `default`.`BoxOfcFact` ADD CONSTRAINT `Title_FK` FOREIGN KEY () REFERENCES `default`.`TitleSCDDim` (`Title_SK`);
ALTER TABLE `default`.`MovieGenreBri` ADD CONSTRAINT `Genre_FK` FOREIGN KEY () REFERENCES `default`.`GenreDim` (`Genre_SK`);
ALTER TABLE `default`.`MovieGenreBri` ADD CONSTRAINT `Title_FK` FOREIGN KEY () REFERENCES `default`.`TitleSCDDim` (`Title_SK`);
ALTER TABLE `default`.`MovieRegionBri` ADD CONSTRAINT `Title_FK` FOREIGN KEY () REFERENCES `default`.`TitleSCDDim` (`Title_SK`);
ALTER TABLE `default`.`MovieRegionBri` ADD CONSTRAINT `Region_FK` FOREIGN KEY () REFERENCES `default`.`RegionDim` (`Region_SK`);
ALTER TABLE `default`.`RatingFact` ADD CONSTRAINT `Title_FK` FOREIGN KEY () REFERENCES `default`.`TitleSCDDim` (`Title_SK`);
ALTER TABLE `default`.`TitlePrincipleFact` ADD CONSTRAINT `Title_FK` FOREIGN KEY () REFERENCES `default`.`TitleSCDDim` (`Title_SK`);
ALTER TABLE `default`.`TitlePrincipleFact` ADD CONSTRAINT `Person_FK` FOREIGN KEY () REFERENCES `default`.`PersonDim` (`Person_SK`);
ALTER TABLE `default`.`TitlePrincipleFact` ADD CONSTRAINT `Name_FK` FOREIGN KEY () REFERENCES `default`.`NameSCDDim` (`Name_SK`);

