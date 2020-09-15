
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/15/2020 12:53:45
-- Generated from EDMX file: C:\Users\Adiwira\source\repos\FIT5120\Models\QuizModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QuizDB];
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

-- Creating table 'QuizResults'
CREATE TABLE [dbo].[QuizResults] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [State] nvarchar(max)  NOT NULL,
    [Occupants] int  NOT NULL,
    [Income] float  NOT NULL,
    [EnergyBills] float  NOT NULL,
    [WaterBills] float  NOT NULL,
    [HeaterType] nvarchar(max)  NOT NULL,
    [HeaterDuration] int  NOT NULL,
    [WMType] nvarchar(max)  NOT NULL,
    [WashingFrequency] int  NOT NULL,
    [Room] int  NOT NULL,
    [BulbType] nvarchar(max)  NOT NULL,
    [BulbDuration] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'QuizResults'
ALTER TABLE [dbo].[QuizResults]
ADD CONSTRAINT [PK_QuizResults]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------