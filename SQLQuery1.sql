
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/29/2020 00:52:55
-- Generated from EDMX file: C:\Users\Adiwira Satwika\source\repos\Environment_Green\Models\EnvoGreen_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EnvoGreen_ModelFirst];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Energies'
CREATE TABLE [dbo].[Energies] (
    [Year] int IDENTITY(1,1) NOT NULL,
    [TotalEnergy] int  NOT NULL,
    [Water_WaterId] int  NOT NULL,
    [Electricity_SeasonType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Waters'
CREATE TABLE [dbo].[Waters] (
    [WaterId] int IDENTITY(1,1) NOT NULL,
    [Year] int  NOT NULL,
    [State] nvarchar(max)  NOT NULL,
    [AvgHouseholdConsumption] int  NOT NULL,
    [TotalConvention] int  NOT NULL,
    [TotalExpenditure] int  NOT NULL
);
GO

-- Creating table 'Households'
CREATE TABLE [dbo].[Households] (
    [HouseholdId] int IDENTITY(1,1) NOT NULL,
    [FamilyType] nvarchar(max)  NOT NULL,
    [EnergyType] nvarchar(max)  NOT NULL,
    [WeeklyExpenditure] int  NOT NULL
);
GO

-- Creating table 'Electricities'
CREATE TABLE [dbo].[Electricities] (
    [SeasonType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DwellingTypes'
CREATE TABLE [dbo].[DwellingTypes] (
    [Housetype] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Employeds'
CREATE TABLE [dbo].[Employeds] (
    [EmployedId] int IDENTITY(1,1) NOT NULL,
    [NumEmploted] nvarchar(max)  NOT NULL,
    [PercentageEnergy] nvarchar(max)  NOT NULL,
    [FamilyType] nvarchar(max)  NOT NULL,
    [HouseholdHouseholdId] int  NOT NULL
);
GO

-- Creating table 'Winters'
CREATE TABLE [dbo].[Winters] (
    [WinterId] int IDENTITY(1,1) NOT NULL,
    [ApplianceType] nvarchar(max)  NOT NULL,
    [WeeklyConsumption] int  NOT NULL,
    [WeeklyFee] int  NOT NULL,
    [AvgHours] int  NOT NULL,
    [AvgTemperature] int  NOT NULL,
    [ElectricitySeasonType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'WinterDwellings'
CREATE TABLE [dbo].[WinterDwellings] (
    [WinterDwellingId] int IDENTITY(1,1) NOT NULL,
    [Housetype] nvarchar(max)  NOT NULL,
    [Yearline] nvarchar(max)  NOT NULL,
    [PercentageCost] int  NOT NULL,
    [WinterWinterId] int  NOT NULL,
    [DwellingType_Housetype] nvarchar(max)  NOT NULL,
    [Timeline_TimelineId] int  NOT NULL
);
GO

-- Creating table 'Timelines'
CREATE TABLE [dbo].[Timelines] (
    [TimelineId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Summers'
CREATE TABLE [dbo].[Summers] (
    [ApplianceType] int IDENTITY(1,1) NOT NULL,
    [WeeklyConsumption] int  NOT NULL,
    [WeeklyFee] int  NOT NULL,
    [AvgHours] int  NOT NULL,
    [AvgTemperature] int  NOT NULL,
    [ElectricitySeasonType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SummerDwellings'
CREATE TABLE [dbo].[SummerDwellings] (
    [SummerDwellingId] int IDENTITY(1,1) NOT NULL,
    [Housetype] nvarchar(max)  NOT NULL,
    [ApplianceType] nvarchar(max)  NOT NULL,
    [Yearline] nvarchar(max)  NOT NULL,
    [PercentageCost] int  NOT NULL,
    [TimelineTimelineId] int  NOT NULL,
    [DwellingTypeHousetype] nvarchar(max)  NOT NULL,
    [Summer_ApplianceType] int  NOT NULL
);
GO

-- Creating table 'EnergyHousehold'
CREATE TABLE [dbo].[EnergyHousehold] (
    [Energies_Year] int  NOT NULL,
    [Households_HouseholdId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Year] in table 'Energies'
ALTER TABLE [dbo].[Energies]
ADD CONSTRAINT [PK_Energies]
    PRIMARY KEY CLUSTERED ([Year] ASC);
GO

-- Creating primary key on [WaterId] in table 'Waters'
ALTER TABLE [dbo].[Waters]
ADD CONSTRAINT [PK_Waters]
    PRIMARY KEY CLUSTERED ([WaterId] ASC);
GO

-- Creating primary key on [HouseholdId] in table 'Households'
ALTER TABLE [dbo].[Households]
ADD CONSTRAINT [PK_Households]
    PRIMARY KEY CLUSTERED ([HouseholdId] ASC);
GO

-- Creating primary key on [SeasonType] in table 'Electricities'
ALTER TABLE [dbo].[Electricities]
ADD CONSTRAINT [PK_Electricities]
    PRIMARY KEY CLUSTERED ([SeasonType] ASC);
GO

-- Creating primary key on [Housetype] in table 'DwellingTypes'
ALTER TABLE [dbo].[DwellingTypes]
ADD CONSTRAINT [PK_DwellingTypes]
    PRIMARY KEY CLUSTERED ([Housetype] ASC);
GO

-- Creating primary key on [EmployedId] in table 'Employeds'
ALTER TABLE [dbo].[Employeds]
ADD CONSTRAINT [PK_Employeds]
    PRIMARY KEY CLUSTERED ([EmployedId] ASC);
GO

-- Creating primary key on [WinterId] in table 'Winters'
ALTER TABLE [dbo].[Winters]
ADD CONSTRAINT [PK_Winters]
    PRIMARY KEY CLUSTERED ([WinterId] ASC);
GO

-- Creating primary key on [WinterDwellingId] in table 'WinterDwellings'
ALTER TABLE [dbo].[WinterDwellings]
ADD CONSTRAINT [PK_WinterDwellings]
    PRIMARY KEY CLUSTERED ([WinterDwellingId] ASC);
GO

-- Creating primary key on [TimelineId] in table 'Timelines'
ALTER TABLE [dbo].[Timelines]
ADD CONSTRAINT [PK_Timelines]
    PRIMARY KEY CLUSTERED ([TimelineId] ASC);
GO

-- Creating primary key on [ApplianceType] in table 'Summers'
ALTER TABLE [dbo].[Summers]
ADD CONSTRAINT [PK_Summers]
    PRIMARY KEY CLUSTERED ([ApplianceType] ASC);
GO

-- Creating primary key on [SummerDwellingId] in table 'SummerDwellings'
ALTER TABLE [dbo].[SummerDwellings]
ADD CONSTRAINT [PK_SummerDwellings]
    PRIMARY KEY CLUSTERED ([SummerDwellingId] ASC);
GO

-- Creating primary key on [Energies_Year], [Households_HouseholdId] in table 'EnergyHousehold'
ALTER TABLE [dbo].[EnergyHousehold]
ADD CONSTRAINT [PK_EnergyHousehold]
    PRIMARY KEY CLUSTERED ([Energies_Year], [Households_HouseholdId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Water_WaterId] in table 'Energies'
ALTER TABLE [dbo].[Energies]
ADD CONSTRAINT [FK_EnergyWater]
    FOREIGN KEY ([Water_WaterId])
    REFERENCES [dbo].[Waters]
        ([WaterId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnergyWater'
CREATE INDEX [IX_FK_EnergyWater]
ON [dbo].[Energies]
    ([Water_WaterId]);
GO

-- Creating foreign key on [Energies_Year] in table 'EnergyHousehold'
ALTER TABLE [dbo].[EnergyHousehold]
ADD CONSTRAINT [FK_EnergyHousehold_Energy]
    FOREIGN KEY ([Energies_Year])
    REFERENCES [dbo].[Energies]
        ([Year])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Households_HouseholdId] in table 'EnergyHousehold'
ALTER TABLE [dbo].[EnergyHousehold]
ADD CONSTRAINT [FK_EnergyHousehold_Household]
    FOREIGN KEY ([Households_HouseholdId])
    REFERENCES [dbo].[Households]
        ([HouseholdId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnergyHousehold_Household'
CREATE INDEX [IX_FK_EnergyHousehold_Household]
ON [dbo].[EnergyHousehold]
    ([Households_HouseholdId]);
GO

-- Creating foreign key on [Electricity_SeasonType] in table 'Energies'
ALTER TABLE [dbo].[Energies]
ADD CONSTRAINT [FK_EnergyElectricity]
    FOREIGN KEY ([Electricity_SeasonType])
    REFERENCES [dbo].[Electricities]
        ([SeasonType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnergyElectricity'
CREATE INDEX [IX_FK_EnergyElectricity]
ON [dbo].[Energies]
    ([Electricity_SeasonType]);
GO

-- Creating foreign key on [ElectricitySeasonType] in table 'Winters'
ALTER TABLE [dbo].[Winters]
ADD CONSTRAINT [FK_ElectricityWinter]
    FOREIGN KEY ([ElectricitySeasonType])
    REFERENCES [dbo].[Electricities]
        ([SeasonType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricityWinter'
CREATE INDEX [IX_FK_ElectricityWinter]
ON [dbo].[Winters]
    ([ElectricitySeasonType]);
GO

-- Creating foreign key on [HouseholdHouseholdId] in table 'Employeds'
ALTER TABLE [dbo].[Employeds]
ADD CONSTRAINT [FK_HouseholdEmployed]
    FOREIGN KEY ([HouseholdHouseholdId])
    REFERENCES [dbo].[Households]
        ([HouseholdId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HouseholdEmployed'
CREATE INDEX [IX_FK_HouseholdEmployed]
ON [dbo].[Employeds]
    ([HouseholdHouseholdId]);
GO

-- Creating foreign key on [ElectricitySeasonType] in table 'Summers'
ALTER TABLE [dbo].[Summers]
ADD CONSTRAINT [FK_ElectricitySummer]
    FOREIGN KEY ([ElectricitySeasonType])
    REFERENCES [dbo].[Electricities]
        ([SeasonType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ElectricitySummer'
CREATE INDEX [IX_FK_ElectricitySummer]
ON [dbo].[Summers]
    ([ElectricitySeasonType]);
GO

-- Creating foreign key on [WinterWinterId] in table 'WinterDwellings'
ALTER TABLE [dbo].[WinterDwellings]
ADD CONSTRAINT [FK_WinterWinterDwelling]
    FOREIGN KEY ([WinterWinterId])
    REFERENCES [dbo].[Winters]
        ([WinterId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WinterWinterDwelling'
CREATE INDEX [IX_FK_WinterWinterDwelling]
ON [dbo].[WinterDwellings]
    ([WinterWinterId]);
GO

-- Creating foreign key on [DwellingType_Housetype] in table 'WinterDwellings'
ALTER TABLE [dbo].[WinterDwellings]
ADD CONSTRAINT [FK_WinterDwellingDwellingType]
    FOREIGN KEY ([DwellingType_Housetype])
    REFERENCES [dbo].[DwellingTypes]
        ([Housetype])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WinterDwellingDwellingType'
CREATE INDEX [IX_FK_WinterDwellingDwellingType]
ON [dbo].[WinterDwellings]
    ([DwellingType_Housetype]);
GO

-- Creating foreign key on [Timeline_TimelineId] in table 'WinterDwellings'
ALTER TABLE [dbo].[WinterDwellings]
ADD CONSTRAINT [FK_WinterDwellingTimeline]
    FOREIGN KEY ([Timeline_TimelineId])
    REFERENCES [dbo].[Timelines]
        ([TimelineId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WinterDwellingTimeline'
CREATE INDEX [IX_FK_WinterDwellingTimeline]
ON [dbo].[WinterDwellings]
    ([Timeline_TimelineId]);
GO

-- Creating foreign key on [TimelineTimelineId] in table 'SummerDwellings'
ALTER TABLE [dbo].[SummerDwellings]
ADD CONSTRAINT [FK_TimelineSummerDwelling]
    FOREIGN KEY ([TimelineTimelineId])
    REFERENCES [dbo].[Timelines]
        ([TimelineId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TimelineSummerDwelling'
CREATE INDEX [IX_FK_TimelineSummerDwelling]
ON [dbo].[SummerDwellings]
    ([TimelineTimelineId]);
GO

-- Creating foreign key on [Summer_ApplianceType] in table 'SummerDwellings'
ALTER TABLE [dbo].[SummerDwellings]
ADD CONSTRAINT [FK_SummerDwellingSummer]
    FOREIGN KEY ([Summer_ApplianceType])
    REFERENCES [dbo].[Summers]
        ([ApplianceType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SummerDwellingSummer'
CREATE INDEX [IX_FK_SummerDwellingSummer]
ON [dbo].[SummerDwellings]
    ([Summer_ApplianceType]);
GO

-- Creating foreign key on [DwellingTypeHousetype] in table 'SummerDwellings'
ALTER TABLE [dbo].[SummerDwellings]
ADD CONSTRAINT [FK_DwellingTypeSummerDwelling]
    FOREIGN KEY ([DwellingTypeHousetype])
    REFERENCES [dbo].[DwellingTypes]
        ([Housetype])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DwellingTypeSummerDwelling'
CREATE INDEX [IX_FK_DwellingTypeSummerDwelling]
ON [dbo].[SummerDwellings]
    ([DwellingTypeHousetype]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------