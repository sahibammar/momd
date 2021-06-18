CREATE DATABASE momd
GO

USE momd
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE momd..department (
	department_id INT PRIMARY KEY IDENTITY (1, 1),
	department_name  VARCHAR (50) NOT NULL
)
GO

CREATE TABLE momd..employee (
    employee_id INT PRIMARY KEY IDENTITY (1, 1),
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    phone VARCHAR(20),
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES momd..department (department_id)
)
GO

CREATE TABLE momd..MohafathaLookup (
    MohafathaCode INT PRIMARY KEY,
    MohafathaName VARCHAR(50)
)
GO

CREATE TABLE momd..QathaaLookup (
    QathaaCode INT PRIMARY KEY,
    QathaaName VARCHAR(50)
)
GO

CREATE TABLE momd..NahyaaLookup (
    NahyaaCode INT PRIMARY KEY,
    NahyaaName VARCHAR(50)
)
GO

CREATE TABLE momd..CampLookup (
    CampCode INT PRIMARY KEY,
    CampName VARCHAR(50)
)
GO

CREATE TABLE momd..EntryReasonLookup (
    EntryReasonCode INT PRIMARY KEY,
    EntryReasonType VARCHAR(50)
)
GO

CREATE TABLE momd..OriginCountryLookup (
    OriginCountryCode INT PRIMARY KEY,
    OriginCountryName VARCHAR(50)
)
GO

CREATE TABLE momd..OriginMohafathaLookup (
    OriginMohafathaCode INT PRIMARY KEY,
    OriginMohafathayName VARCHAR(50)
)
GO

CREATE TABLE momd..WorkLookup (
    WorkCode INT PRIMARY KEY,
    WorkType VARCHAR(50)
)
GO

CREATE TABLE momd..BranchLookup (
    BranchCode INT PRIMARY KEY,
    BranchName VARCHAR(50)
)
GO

CREATE TABLE momd..GenderLookup (
    GenderCode INT PRIMARY KEY,
    GenderType VARCHAR(50)
)
GO

CREATE TABLE momd..EducationDegreeLookup (
    EducationDegreeCode INT PRIMARY KEY,
    EducationDegreeType VARCHAR(50)
)
GO

CREATE TABLE momd..NationalityLookup (
    NationalityCode INT PRIMARY KEY,
    NationalityName VARCHAR(50)
)
GO

CREATE TABLE momd..NationalisimLookup (
    NationalisimCode INT PRIMARY KEY,
    NationalisimName VARCHAR(50)
)
GO

CREATE TABLE momd..ReligionLookup (
    ReligionCode INT PRIMARY KEY,
    ReligionName VARCHAR(50)
)
GO

CREATE TABLE momd..MartialStatusLookup (
    MartialStatusCode INT PRIMARY KEY,
    MartialStatusType VARCHAR(50)
)
GO

CREATE TABLE momd..MedicalConditionLookup (
    MedicalConditionCode INT PRIMARY KEY,
    MedicalConditionType VARCHAR(50)
)
GO

CREATE TABLE momd..NoReturnHomeReasonLookup (
    NoReturnHomeReasonCode INT PRIMARY KEY,
    NoReturnHomeReasonType VARCHAR(50)
)
GO

CREATE TABLE momd..FamilyFile (
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
    Identifier INT,
    Status VARCHAR(10),
    BirthYear INT,
    PhoneNumber INT,
    MahalaNumber INT,
    ZuqaqNumber INT,
    DarNumber VARCHAR(10),
    EntryDate DATE,
    RegisterationDate DATE,
    HaveMissingPerson BIT, 
    ReturnHomeWilling BIT, 
    MohafathaCode INT,
    QathaaCode INT,
    NahyaCode INT,
    CampCode INT,
    EntryReasonCode INT,
    EntryPlaceCode INT,
    OriginCountryCode INT,
    OriginMohafathaCode INT,
    PreviousWorkCode INT,
    CurrentWorkCode INT,
    BranchCode INT,
    GenderCode INT,
    EducationDegreeCode INT,
    NationalityCode INT,
    NationalisimCode INT,
    ReligionCode INT,
    MartialStatusCode INT,
    MedicalConditionCode INT,
    NoReturnHomeReasonCode INT,
    PRIMARY KEY(FullName,MotherName),
    FOREIGN KEY (MohafathaCode) REFERENCES momd..MohafathaLookup (MohafathaCode),
    FOREIGN KEY (QathaaCode) REFERENCES momd..QathaaLookup (QathaaCode),
    FOREIGN KEY (NahyaCode) REFERENCES momd..NahyaaLookup(NahyaaCode),
    FOREIGN KEY (CampCode) REFERENCES momd..CampLookup(CampCode),
    FOREIGN KEY (EntryReasonCode) REFERENCES momd..EntryReasonLookup(EntryReasonCode),
    FOREIGN KEY (EntryPlaceCode) REFERENCES momd..MohafathaLookup (MohafathaCode),
    FOREIGN KEY (OriginCountryCode) REFERENCES momd..OriginCountryLookup(OriginCountryCode),
    FOREIGN KEY (OriginMohafathaCode) REFERENCES momd..OriginMohafathaLookup (OriginMohafathaCode),
    FOREIGN KEY (PreviousWorkCode) REFERENCES momd..WorkLookup(WorkCode),
    FOREIGN KEY (CurrentWorkCode) REFERENCES momd..WorkLookup(WorkCode),
    FOREIGN KEY (BranchCode) REFERENCES momd..BranchLookup(BranchCode),
    FOREIGN KEY (GenderCode) REFERENCES momd..GenderLookup(GenderCode),
    FOREIGN KEY (EducationDegreeCode) REFERENCES momd..EducationDegreeLookup(EducationDegreeCode),
    FOREIGN KEY (NationalityCode) REFERENCES momd..NationalityLookup(NationalityCode),
    FOREIGN KEY (NationalisimCode) REFERENCES momd..NationalisimLookup(NationalisimCode),
    FOREIGN KEY (ReligionCode) REFERENCES momd..ReligionLookup(ReligionCode),
    FOREIGN KEY (MartialStatusCode) REFERENCES momd..MartialStatusLookup(MartialStatusCode),
    FOREIGN KEY (MedicalConditionCode) REFERENCES momd..MedicalConditionLookup(MedicalConditionCode),
    FOREIGN KEY (NoReturnHomeReasonCode) REFERENCES momd..NoReturnHomeReasonLookup(NoReturnHomeReasonCode)   
)