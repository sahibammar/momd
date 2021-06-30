-- create database
CREATE DATABASE momd
GO

-- change collation to Arabic_ci_as
ALTER DATABASE momd SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
Alter database momd collate Arabic_ci_as 
Go
ALTER DATABASE momd SET MULTI_USER 
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


CREATE TABLE momd..EntryPlaceLookup (
    EntryPlaceCode INT PRIMARY KEY,
    EntryPlaceName VARCHAR(50)
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


CREATE TABLE momd..FamilyRelationLookup (
    FamilyRelationCode INT PRIMARY KEY,
    FamilyRelationType VARCHAR(50)
)
GO

CREATE TABLE momd..UserRoleLookup (
    UserRoleCode INT PRIMARY KEY,
    UserRoleType VARCHAR(50)
)
GO

CREATE TABLE momd..SysUser (
    Identifier INT NOT NULL IDENTITY,
    Name VARCHAR(50),
    UserRoleCode INT,
    BranchCode INT,
    PRIMARY KEY(Identifier),
    FOREIGN KEY (UserRoleCode) REFERENCES momd..UserRoleLookup (UserRoleCode) ON UPDATE CASCADE,
    FOREIGN KEY (BranchCode) REFERENCES momd..BranchLookup (BranchCode) ON UPDATE CASCADE,
)
GO

CREATE TABLE momd..SysUserLog (
    Identifier INT NOT NULL IDENTITY,
    SysUserIdentifier INT,
    UserRoleCode INT,
    BranchCode INT,
    PRIMARY KEY(Identifier),
    FOREIGN KEY (UserRoleCode) REFERENCES momd..UserRoleLookup (UserRoleCode) ON UPDATE CASCADE,
    FOREIGN KEY (BranchCode) REFERENCES momd..BranchLookup (BranchCode) ON UPDATE CASCADE,
)
GO
-- Add YesNo Lookup table

CREATE TABLE momd..FamilyFile (
    Identifier INT NOT NULL IDENTITY,
    FileNumber VARCHAR(8) NOT NULL,
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
    Status VARCHAR(3),
    BirthYear INT,
    PhoneNumber VARCHAR(11),
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
    CONSTRAINT FamilyFileUNIQUEName UNIQUE(FullName,MotherName,Status), -- combination of FullName,MotherName and Status must be unique
    FOREIGN KEY (MohafathaCode) REFERENCES momd..MohafathaLookup (MohafathaCode) ON UPDATE CASCADE, --ensure refrential integrtiy
    FOREIGN KEY (QathaaCode) REFERENCES momd..QathaaLookup (QathaaCode) ON UPDATE CASCADE,
    FOREIGN KEY (NahyaCode) REFERENCES momd..NahyaaLookup(NahyaaCode) ON UPDATE CASCADE,
    FOREIGN KEY (CampCode) REFERENCES momd..CampLookup(CampCode) ON UPDATE CASCADE,
    FOREIGN KEY (EntryReasonCode) REFERENCES momd..EntryReasonLookup(EntryReasonCode) ON UPDATE CASCADE,
    FOREIGN KEY (EntryPlaceCode) REFERENCES momd..EntryPlaceLookup (EntryPlaceCode) ON UPDATE CASCADE,
    FOREIGN KEY (OriginCountryCode) REFERENCES momd..OriginCountryLookup(OriginCountryCode)  ON UPDATE CASCADE,
    FOREIGN KEY (OriginMohafathaCode) REFERENCES momd..OriginMohafathaLookup (OriginMohafathaCode) ON UPDATE CASCADE,
    FOREIGN KEY (PreviousWorkCode) REFERENCES momd..WorkLookup(WorkCode) ON UPDATE CASCADE,
    FOREIGN KEY (CurrentWorkCode) REFERENCES momd..WorkLookup(WorkCode), -- ON UPDATE CASCADE,
    FOREIGN KEY (BranchCode) REFERENCES momd..BranchLookup(BranchCode) ON UPDATE CASCADE,
    FOREIGN KEY (GenderCode) REFERENCES momd..GenderLookup(GenderCode) ON UPDATE CASCADE,
    FOREIGN KEY (EducationDegreeCode) REFERENCES momd..EducationDegreeLookup(EducationDegreeCode) ON UPDATE CASCADE,
    FOREIGN KEY (NationalityCode) REFERENCES momd..NationalityLookup(NationalityCode) ON UPDATE CASCADE,
    FOREIGN KEY (NationalisimCode) REFERENCES momd..NationalisimLookup(NationalisimCode) ON UPDATE CASCADE,
    FOREIGN KEY (ReligionCode) REFERENCES momd..ReligionLookup(ReligionCode) ON UPDATE CASCADE,
    FOREIGN KEY (MartialStatusCode) REFERENCES momd..MartialStatusLookup(MartialStatusCode) ON UPDATE CASCADE,
    FOREIGN KEY (MedicalConditionCode) REFERENCES momd..MedicalConditionLookup(MedicalConditionCode) ON UPDATE CASCADE,
)
GO

CREATE TABLE momd..FamilyFileArchive (
    Identifier INT NOT NULL,
    ArchivingDate DATE,
    FileNumber VARCHAR(8) NOT NULL,
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
    NoReturnHomeReasonCode INT
)
GO

CREATE TABLE momd..Member (
    Identifier INT NOT NULL IDENTITY,
    FamilyFileIdentifier INT,
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
    BirthYear INT,
    GenderCode INT,
    MedicalConditions VARCHAR(50),
    EducationDegree VARCHAR(50),
    FamilyRelationCode INT,
    PRIMARY KEY(Identifier),
    CONSTRAINT MemberUNIQUEName UNIQUE(FullName,MotherName),
    FOREIGN KEY (GenderCode) REFERENCES momd..GenderLookup(GenderCode), -- ON UPDATE CASCADE,
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier) ON UPDATE CASCADE,
    FOREIGN KEY (FamilyRelationCode) REFERENCES  momd..FamilyRelationLookup(FamilyRelationCode) ON UPDATE CASCADE
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
    FOREIGN KEY (MohafathaCode) REFERENCES momd..MohafathaLookup (MohafathaCode) ON UPDATE CASCADE,
    FOREIGN KEY (QathaaCode) REFERENCES momd..QathaaLookup (QathaaCode) ON UPDATE CASCADE,
    FOREIGN KEY (NahyaCode) REFERENCES momd..NahyaaLookup(NahyaaCode) ON UPDATE CASCADE,
    FOREIGN KEY (MantaqaCode) REFERENCES momd..MantaqaLookup(MantaqaCode) ON UPDATE CASCADE
)
GO

CREATE TABLE momd..FamilySponsors (
    FamilyFileIdentifier INT,
    SponsorIdentifier INT,
    SponsoringDate Date,
    PRIMARY KEY(FamilyFileIdentifier,SponsorIdentifier),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier), -- ON UPDATE CASCADE,
    FOREIGN KEY (SponsorIdentifier) REFERENCES momd..Sponsor(Identifier) ON UPDATE CASCADE
)
GO

CREATE TABLE momd..FamilyDocuments (
    FamilyFileIdentifier INT,
    DocumentCode INT,
    PRIMARY KEY(FamilyFileIdentifier,DocumentCode),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier) ON UPDATE CASCADE,
    FOREIGN KEY (DocumentCode) REFERENCES momd..DocumentLookup(DocumentCode) ON UPDATE CASCADE
)
GO

CREATE TABLE momd..FamilyAssistance (
    FamilyFileIdentifier INT,
    AssistanceCode INT,
    Amount INT,
    PRIMARY KEY(FamilyFileIdentifier,AssistanceCode),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier)  ON UPDATE CASCADE,
    FOREIGN KEY (AssistanceCode) REFERENCES momd..AssistanceLookup(AssistanceCode) ON UPDATE CASCADE
)
GO

CREATE TABLE momd..FamilyFileChanges (
    Identifier INT NOT NULL IDENTITY,
    FamilyFileIdentifier INT,
    ChangeCode INT,
    ChangeDate Date,
    ChangeNote VARCHAR(1000),
    SysUserIdentifier INT,
    PRIMARY KEY(Identifier),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier) ON UPDATE CASCADE,
    FOREIGN KEY (ChangeCode) REFERENCES momd..ChangeLookup(ChangeCode) ON UPDATE CASCADE,
    FOREIGN KEY (SysUserIdentifier) REFERENCES momd..SysUser(Identifier) --ON UPDATE CASCADE
)
GO

-- combine country with nationality ?