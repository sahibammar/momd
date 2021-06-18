﻿CREATE DATABASE momd
GO

USE momd
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

CREATE TABLE momd..MantaqaLookup (
    MantaqaCode INT PRIMARY KEY,
    MantaqaName VARCHAR(50)
)
GO

CREATE TABLE momd..DocumentLookup (
    DocumentCode INT PRIMARY KEY,
    DocumentType VARCHAR(50)
)
GO

CREATE TABLE momd..ChangeLookup (
    ChangeCode INT PRIMARY KEY,
    ChangeType VARCHAR(50)
)
GO

CREATE TABLE momd..AssistanceLookup (
    AssistanceCode INT PRIMARY KEY,
    AssistanceType VARCHAR(50)
)
GO

CREATE TABLE momd..Member (
    Identifier INT NOT NULL IDENTITY,
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
    BirthYear INT,
    GenderCode INT,
    MedicalConditions VARCHAR(50),
    EducationDegree VARCHAR(50),
    PRIMARY KEY(Identifier),
    CONSTRAINT MemberUNIQUEName UNIQUE(FullName,MotherName),
    FOREIGN KEY (GenderCode) REFERENCES momd..GenderLookup(GenderCode)
)
GO

CREATE TABLE momd..FamilyFile (
    Identifier INT NOT NULL IDENTITY,
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
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
    PRIMARY KEY(Identifier),
    CONSTRAINT FamilyFileUNIQUEName UNIQUE(FullName,MotherName),
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
GO

CREATE TABLE momd..Sponsor (
    Identifier INT NOT NULL IDENTITY,
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
    PhoneNumber INT,
    MahalaNumber INT,
    ZuqaqNumber INT,
    DarNumber VARCHAR(10),
    MohafathaCode INT,
    QathaaCode INT,
    NahyaCode INT,
    MantaqaCode INT,
    PRIMARY KEY(Identifier),
    CONSTRAINT SponsorUNIQUEName UNIQUE(FullName,MotherName),
    FOREIGN KEY (MohafathaCode) REFERENCES momd..MohafathaLookup (MohafathaCode),
    FOREIGN KEY (QathaaCode) REFERENCES momd..QathaaLookup (QathaaCode),
    FOREIGN KEY (NahyaCode) REFERENCES momd..NahyaaLookup(NahyaaCode),
    FOREIGN KEY (MantaqaCode) REFERENCES momd..MantaqaLookup(MantaqaCode)
)
GO

CREATE TABLE momd..FamilyMembers (
    FamilyFileIdentifier INT,
    MemberIdentifier INT,
    FamilyRelativeType VARCHAR(50),
    PRIMARY KEY(FamilyFileIdentifier,MemberIdentifier),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier),
    FOREIGN KEY (MemberIdentifier) REFERENCES momd..Member(Identifier)
)
GO

CREATE TABLE momd..FamilySponsors (
    FamilyFileIdentifier INT,
    SponsorIdentifier INT,
    SponsoringDate Date,
    PRIMARY KEY(FamilyFileIdentifier,SponsorIdentifier),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier),
    FOREIGN KEY (SponsorIdentifier) REFERENCES momd..Sponsor(Identifier)
)
GO

CREATE TABLE momd..FamilyDocuments (
    FamilyFileIdentifier INT,
    DocumentCode INT,
    PRIMARY KEY(FamilyFileIdentifier,DocumentCode),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier),
    FOREIGN KEY (DocumentCode) REFERENCES momd..DocumentLookup(DocumentCode)
)
GO

CREATE TABLE momd..FamilyAssistance (
    FamilyFileIdentifier INT,
    AssistanceCode INT,
    Amount INT,
    PRIMARY KEY(FamilyFileIdentifier,AssistanceCode),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier),
    FOREIGN KEY (AssistanceCode) REFERENCES momd..AssistanceLookup(AssistanceCode)
)
GO

CREATE TABLE momd..FamilyFileChanges (
    Identifier INT NOT NULL IDENTITY,
    FamilyFileIdentifier INT,
    ChangeCode INT,
    ChangeDate Date,
    ChangeNote VARCHAR(1000),
    PRIMARY KEY(Identifier),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier),
    FOREIGN KEY (ChangeCode) REFERENCES momd..ChangeLookup(ChangeCode)
)
GO