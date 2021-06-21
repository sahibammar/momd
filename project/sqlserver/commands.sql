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
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'0', NULL)
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'11', N'دهوك')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'12', N'نينوى')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'13', N'السليمانية')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'14', N'كركوك')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'15', N'اربيل')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'21', N'ديالى')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'22', N'الانبار')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'23', N'بغداد')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'24', N'بابل')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'25', N'كربلاء')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'26', N'واسط')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'27', N'صلاح الدين')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'28', N'النجف')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'31', N'القادسية')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'32', N'المثنى')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'33', N'ذي قار')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'34', N'ميسان')
INSERT [dbo].[MohafathaLookup] ([ProvinceCode], [MohafathaName]) VALUES (N'35', N'البصرة')

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
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'0', NULL)
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'01', N'امي')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'02', N'يقرا ويكتب')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'03', N'ابتدائية')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'04', N'متوسطة')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'05', N'اعدادية')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'06', N'دبلوم')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'07', N'بكالوريوس')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'08', N'دبلوم عالي')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'09', N'ماجستير')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'10', N'دكتوراه')
INSERT [dbo].[EducationDegreeLookup] ([EducationDegreeCode], [EducationDegreeType]) VALUES (N'11', N'اعلى من الدكتوراه')

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
INSERT [dbo].[AssistanceLookup] ([AssistanceCode], [AssistanceType]) VALUES (N'0', NULL)
INSERT [dbo].[AssistanceLookup] ([AssistanceCode], [AssistanceType]) VALUES (N'01', N'غذائية')
INSERT [dbo].[AssistanceLookup] ([AssistanceCode], [AssistanceType]) VALUES (N'02', N'غير غذائية')
INSERT [dbo].[AssistanceLookup] ([AssistanceCode], [AssistanceType]) VALUES (N'03', N'مالية')

CREATE TABLE momd..FamilyFile (
    Identifier INT NOT NULL IDENTITY,
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
    NoReturnHomeReasonCode INT,
    PRIMARY KEY(Identifier),
    CONSTRAINT FamilyFileUNIQUEName UNIQUE(FullName,MotherName,Status),
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

CREATE TABLE momd..Member (
    Identifier INT NOT NULL IDENTITY,
    FamilyFileIdentifier INT,
    FullName VARCHAR(250) NOT NULL,
    MotherName VARCHAR(250) NOT NULL,
    BirthYear INT,
    GenderCode INT,
    MedicalConditions VARCHAR(50),
    EducationDegree VARCHAR(50),
    FamilyRelativeType VARCHAR(50),
    PRIMARY KEY(Identifier),
    CONSTRAINT MemberUNIQUEName UNIQUE(FullName,MotherName),
    FOREIGN KEY (GenderCode) REFERENCES momd..GenderLookup(GenderCode),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier)
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
