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
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'0', NULL)
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1101', N'قضاء دهوك')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1102', N'قضاء العمادية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1103', N'قضاء زاخو')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1104', N'قضاء سميل')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1201', N'قضاء الموصل')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1203', N'قضاء الحمدانية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1204', N'قضاء تلكيف')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1205', N'قضاء سنجار')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1206', N'قضاء تلعفر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1207', N'قضاء الشيخان')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1208', N'قضاء الحضر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1209', N'قضاء البعاج')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1210', N'قضاء عقرة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1301', N'قضاء السليمانية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1303', N'قضاء صدامية حلبجة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1305', N'قضاء بشدر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1306', N'قضاء رانية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1307', N'قضاء دوكان')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1308', N'قضاء دربندخان')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1309', N'قضاء جمجمال')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1310', N'قضاء كلار')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1401', N'قضاء كركوك')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1402', N'قضاء الحويجة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1403', N'قضاء الداقوق')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1404', N'قضاء دبس')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1501', N'قضاء اربيل')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1502', N'قضاء مخمور')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1504', N'قضاء الصديق')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'1506', N'قضاء شقلاوة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2101', N'قضاء بعقوبة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2102', N'قضاء المقدادية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2103', N'قضاء الخالص')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2104', N'قضاء خانقين')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2105', N'قضاء بلدروز')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2106', N'قضاء كفري')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2201', N'قضاء الرمادي')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2202', N'قضاء هيت')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2203', N'قضاء الفلوجة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2204', N'قضاء عنه')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2205', N'قضاء حديثة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2206', N'قضاء الرطبة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2207', N'قضاء القائم')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2208', N'قضاء راوة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2301', N'قضاء الرصافة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2302', N'قضاء الاعظمية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2303', N'قضاء صدر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2304', N'قضاء القائد صدر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2305', N'قضاء الكرخ')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2306', N'قضاء الكاظمية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2307', N'قضاء المحمودية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2308', N'قضاء أبي غريب')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2309', N'قضاء الطارمية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2310', N'قضاء المدائن')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2401', N'قضاء الحلة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2402', N'قضاء المحاويل')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2403', N'قضاء الهاشمية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2405', N'قضاء المسيب')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2501', N'قضاء كربلاء')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2502', N'قضاء عين التمر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2503', N'قضاء الهندية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2601', N'قضاء الكوت')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2602', N'قضاء النعمانية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2603', N'قضاء الحي')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2604', N'قضاء بدرة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2605', N'قضاء الصويرة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2606', N'قضاء العزيزية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2701', N'قضاء تكريت')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2702', N'قضاء طوز خورماتو')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2703', N'قضاء سامراء')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2704', N'قضاء بلد')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2705', N'قضاء بيجي')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2706', N'قضاء الدور')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2707', N'قضاء الشرقاط')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2708', N'قضاء الفارس')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2709', N'قضاء الصدامية في الثرثار')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2801', N'قضاء النجف')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2802', N'قضاء الكوفة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'2803', N'قضاء المناذرة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3101', N'قضاء الديوانية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3102', N'قضاء عفك')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3104', N'قضاء الشامية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3105', N'قضاء الحمزة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3201', N'قضاء السماوة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3202', N'قضاء الرميثة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3203', N'قضاء السلمان')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3204', N'قضاء الخضر')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3301', N'قضاء الناصرية')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3302', N'قضاء الرفاعي')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3303', N'قضاء سوق الشيوخ')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3304', N'قضاء الجبايش')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3305', N'قضاء الشطرة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3401', N'قضاء العمارة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3402', N'قضاء علي الغربي')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3403', N'قضاء الميمونة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3404', N'قضاء قلعة صالح')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3405', N'قضاء المجر الكبير')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3406', N'قضاء الكحلاء')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3501', N'قضاء البصرة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3502', N'قضاء أبي الخصيب')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3503', N'قضاء الزبير')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3504', N'قضاء القرنة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3505', N'قضاء الفاو')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3506', N'قضاء شط العرب')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3507', N'فضاء المدينة')
INSERT [dbo].[QathaaLookup] ([QathaaCode], [QathaaName]) VALUES (N'3508', N'قضاء صدامية البصرة')

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
