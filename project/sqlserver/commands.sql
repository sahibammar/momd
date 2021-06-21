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
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'0', NULL)
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'11', N'دهوك')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'12', N'نينوى')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'13', N'السليمانية')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'14', N'كركوك')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'15', N'اربيل')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'21', N'ديالى')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'22', N'الانبار')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'23', N'بغداد')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'24', N'بابل')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'25', N'كربلاء')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'26', N'واسط')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'27', N'صلاح الدين')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'28', N'النجف')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'31', N'القادسية')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'32', N'المثنى')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'33', N'ذي قار')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'34', N'ميسان')
INSERT [dbo].[MohafathaLookup] ([MohafathaCode], [MohafathaName]) VALUES (N'35', N'البصرة')

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
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'0', NULL)
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11011', N'مركز قضاء دهوك')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11012', N'ناحية زاويته')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11021', N'مركز قضاء العمادية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11022', N'ناحية سرسنك')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11031', N'مركز قضاء زاخو')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11033', N'ناحية السندي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11041', N'مركز قضاء سميل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11042', N'ناحية فايدة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'11043', N'ناحية السليقاني')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12011', N'مركز قضاء الموصل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12012', N'ناحية بعشيقة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12013', N'ناحية الشورة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12014', N'ناحية حمام العليل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12015', N'ناحية القيارة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12016', N'ناحية المحلبية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12031', N'مركز قضاء الحمدانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12033', N'ناحية نمرود')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12034', N'ناحية برطله')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12041', N'مركز قضاء تلكيف')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12043', N'ناحية القوش')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12044', N'ناحية وانه')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12051', N'مركز قضاء سنجار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12052', N'ناحية الشمال')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12053', N'ناحية القيروان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12061', N'مركز قضاء تلعفر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12062', N'ناحية زمار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12063', N'ناحية ربيعة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12064', N'ناحية العياضية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12071', N'ناحيةعين سفني(م.ق الشيخان)')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12072', N'ناحية الفاروق')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12081', N'مركز قضاء الحضر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12082', N'ناحية التل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12091', N'مركز قضاء البعاج')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12092', N'ناحية القحطانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12101', N'مركز قضاء عقرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'12103', N'ناحية العشائر السبعة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13011', N'مركز قضاء السليمانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13014', N'ناحية بازيان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13031', N'مركز قضاء صدامية حلبجة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13032', N'ناحية الاخوة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13033', N'ناحية حلبجة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13034', N'ناحية بنجوين')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13035', N'ناحية شهرزور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13051', N'مركز قضاء بشدر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13053', N'ناحية ناودشت')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13061', N'مركز قضاء رانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13064', N'ناحية بيتواته')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13071', N'مركز قضاء دوكان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13081', N'مركز قضاء دربندخان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13091', N'مركز قضاء جمجمال')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13101', N'مركز قضاء كلار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'13102', N'ناحية الصمود')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14011', N'مركز قضاء كركوك')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14012', N'ناحية الملتقى')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14016', N'ناحية تازة خورماتو')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14017', N'ناحية أم المعارك')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14021', N'مركز قضاء الحويجة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14022', N'ناحية العباسي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14023', N'ناحية الرياض')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14024', N'ناحية الزاب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14031', N'مركز قضاء الداقوق')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14032', N'ناحية الرشاد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14033', N'ناحية العهد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14041', N'مركز قضاء دبس')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'14042', N'ناحية القدس')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15011', N'مركز قضاء اربيل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15012', N'ناحية خه بات')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15013', N'ناحية كويسنجق')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15014', N'ناحية التون كوبري')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15021', N'مركز قضاء مخمور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15022', N'ناحية الكوير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15023', N'ناحية كنديناوه')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15024', N'ناحية قراج')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15025', N'ناحية العدنانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15041', N'مركز قضاء الصديق')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15044', N'ناحية خليفان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15045', N'ناحية راوندوز')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15061', N'مركز قضاء شقلاوة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15063', N'ناحية حرير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'15064', N'ناحية صلاح الدين')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21011', N'مركز قضاء بعقوبة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21012', N'ناحية كنعان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21013', N'ناحية بني سعد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21014', N'ناحية أشنونا')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21015', N'ناحية المعبر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21021', N'مركز قضاء المقدادية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21022', N'ناحية أبي صيدا')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21023', N'ناحية الوجيهية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21031', N'مركز قضاء الخالص')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21032', N'ناحية المنصورية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21033', N'ناحية هبهب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21034', N'ناحية العظيم')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21035', N'ناحية 30 تموز')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21041', N'مركز قضاء خانقين')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21044', N'ناحية جلولاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21045', N'ناحية السعدية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21051', N'مركز قضاء بلدروز')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21052', N'ناحية مندلي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21053', N'ناحية قزانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21061', N'مركز قضاء كفري')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21065', N'ناحية قرة تبة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'21066', N'ناحية جبارة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22011', N'مركز قضاء الرمادي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22012', N'ناحية الحبانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22013', N'ناحية الوفاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22021', N'مركز قضاء هيت')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22022', N'ناحية البغدادي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22023', N'ناحية كبيسة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22024', N'ناحية الفرات')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22031', N'مركز قضاء الفلوجة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22033', N'ناحية العامرية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22034', N'ناحية الصقلاوية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22035', N'ناحية الكرمة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22041', N'مركز قضاء عنه')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22051', N'مركز قضاء حديثة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22052', N'ناحية الحقلانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22053', N'ناحية بروانه')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22061', N'مركز قضاء الرطبة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22062', N'ناحية الوليد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22063', N'ناحية النخيب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22071', N'مركز قضاء القائم')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22072', N'ناحية العبور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22073', N'ناحية العبيدي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'22081', N'مركز قضاء راوة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23011', N'مركز قضاء الرصافة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23012', N'ناحية الكرادة الشرقية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23013', N'ناحية بغداد الجديدة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23014', N'ناحية فلسطين')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23021', N'مركز قضاء الاعظمية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23022', N'ناحية الراشدية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23023', N'ناحية الفحامة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23024', N'ناحية الزهور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23031', N'مركز قضاء صدر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23032', N'ناحية الفداء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23033', N'ناحية بطل التحرير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23041', N'مركز قضاء القائد صدر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23042', N'ناحية النخوة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23043', N'ناحية الفارس العربي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23051', N'مركز قضاء الكرخ')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23052', N'ناحية المنصور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23053', N'ناحية المأمون')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23061', N'مركز قضاء الكاظمية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23063', N'ناحية ذات السلاسل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23065', N'ناحية التاجي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23066', N'ناحية الطارمية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23071', N'مركز قضاء المحمودية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23072', N'ناحية اليوسفية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23073', N'ناحية اللطيفية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23074', N'ناحية الرشيد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23081', N'مركز قضاء أبي غريب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23082', N'ناحية النصر والسلام')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23091', N'مركز قضاء الطارمية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23092', N'ناحية المشاهدة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23093', N'ناحية العبايجي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23101', N'مركز قضاء المدائن')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23102', N'ناحية الجسر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'23103', N'ناحية الوحدة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24011', N'مركز قضاء الحلة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24012', N'ناحية الكفل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24013', N'ناحية أبي غرق')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24021', N'مركز قضاء المحاويل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24022', N'ناحية الصدامية في المشروع')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24023', N'ناحية الإمام')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24024', N'ناحية النيل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24031', N'مركز قضاء الهاشمية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24032', N'ناحية القاسم')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24033', N'ناحية المدحتية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24034', N'ناحية الشوملي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24035', N'ناحية الطليعة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24051', N'مركز قضاء المسيب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24052', N'ناحية سدة الهندية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24053', N'ناحية جرف الصخر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'24054', N'ناحية الإسكندرية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25011', N'مركز قضاء كربلاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25012', N'ناحية الحسينية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25013', N'ناحية الحر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25021', N'مركز قضاء عين التمر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25031', N'مركز قضاء الهندية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25032', N'ناحية الجدول الغربي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'25033', N'ناحية الخيرات')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26011', N'مركز قضاء الكوت')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26012', N'ناحية واسط')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26014', N'ناحية شيخ سعد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26021', N'مركز قضاء النعمانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26022', N'ناحية الأحرار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26031', N'مركز قضاء الحي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26032', N'ناحية الموفقية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26033', N'ناحية البشائر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26041', N'مركز قضاء بدرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26043', N'ناحية جصان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26044', N'ناحية الذهب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26051', N'مركز قضاء الصويرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26053', N'ناحية الزبيدية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26054', N'ناحية الشحيمية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26061', N'مركز قضاء العزيزية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26062', N'ناحية الحفرية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'26063', N'ناحية الخلفاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27011', N'مركز قضاء تكريت')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27012', N'ناحية العلم')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27021', N'مركز قضاء طوز خورماتو')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27022', N'ناحية آمرلي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27023', N'ناحية سلمان باك')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27031', N'مركز قضاء سامراء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27032', N'ناحية المعتصم')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27033', N'ناحية دجلة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27041', N'مركز قضاء بلد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27042', N'ناحية الضلوعية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27043', N'ناحية الاسحاقي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27044', N'ناحية يثرب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27051', N'مركز قضاء بيجي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27052', N'ناحية الصينية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27061', N'مركز قضاء الدور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27071', N'مركز قضاء الشرقاط')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27081', N'مركز قضاء الفارس')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'27091', N'مركز قضاء الصدامية في الثرثار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28011', N'مركز قضاء النجف')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28012', N'ناحية الحيدرية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28013', N'ناحية الشبكة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28021', N'مركز قضاء الكوفة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28022', N'ناحية العباسية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28023', N'ناحية الحرية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28031', N'مركز قضاء المناذرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28032', N'ناحية الحيرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28033', N'ناحية المشخاب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'28034', N'ناحية القادسية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31011', N'مركز قضاء الديوانية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31013', N'ناحية السنية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31014', N'ناحية الشافعية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31015', N'ناحية الدغارة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31021', N'مركز قضاء عفك')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31022', N'ناحية نفر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31023', N'ناحية البدير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31024', N'ناحية سومر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31041', N'مركز قضاء الشامية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31042', N'ناحية غماس')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31043', N'ناحية المهناوية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31044', N'ناحية الصلاحية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31051', N'مركز قضاء الحمزة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31052', N'ناحية السدير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'31053', N'ناحية الشنافية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32011', N'مركز قضاء السماوة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32012', N'ناحية السوير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32021', N'مركز قضاء الرميثة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32022', N'ناحية المجد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32023', N'ناحية الوركاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32024', N'ناحية النجمي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32025', N'ناحية الهلال')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32031', N'مركز قضاء السلمان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32032', N'ناحية البصية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32041', N'مركز قضاء الخضر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'32042', N'ناحية الدراجي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33011', N'مركز قضاء الناصرية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33012', N'ناحية الإصلاح')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33014', N'ناحية البطحاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33015', N'ناحية سيد دخيل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33016', N'ناحية أور')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33021', N'مركز قضاء الرفاعي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33022', N'ناحية قلة سكر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33023', N'ناحية النصر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33024', N'ناحية الفجر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33031', N'مركز قضاء سوق الشيوخ')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33032', N'ناحية عكيكة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33033', N'ناحية كرمة بني سعيد')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33034', N'ناحية الفضلية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33035', N'ناحية الطار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33041', N'مركز قضاء الجبايش')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33042', N'ناحية الحمار')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33043', N'ناحية الفهود')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33051', N'مركز قضاء الشطرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33052', N'ناحية الدواية')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'33053', N'ناحية الغراف')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34011', N'مركز قضاء العمارة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34012', N'ناحية كميت')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34021', N'مركز قضاء علي الغربي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34023', N'ناحية علي الشرقي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34031', N'مركز قضاء الميمونة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34032', N'ناحية السلام')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34033', N'ناحية سيد أحمد الرفاعي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34041', N'مركز قضاء قلعة صالح')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34042', N'ناحية العزير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34051', N'مركز قضاء المجر الكبير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34052', N'ناحية العدل')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34053', N'ناحية الخير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34061', N'مركز قضاء الكحلاء')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34062', N'ناحية المشرح')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'34063', N'ناحية الرافعي')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35011', N'مركز قضاء البصرة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35012', N'ناحية الهارثة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35021', N'مركز قضاء أبي الخصيب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35031', N'مركز قضاء الزبير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35032', N'ناحية سفوان')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35033', N'ناحية أم قصر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35041', N'مركز قضاء القرنة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35044', N'ناحية الدير')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35045', N'ناحية الثغر')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35051', N'مركز قضاء الفاو')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35061', N'مركز قضاء شط العرب')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35063', N'ناحية النشوة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35071', N'مركز قضاء المدينة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35072', N'ناحية العز')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35073', N'ناحية طلحة')
INSERT [dbo].[NahyaaLookup] ([NahyaaCode], [NahyaaName]) VALUES (N'35081', N'مركز قضاء صدامية البصرة')

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
    FOREIGN KEY (MohafathaCode) REFERENCES momd..MohafathaLookup (MohafathaCode) ON UPDATE CASCADE,
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
    FOREIGN KEY (NoReturnHomeReasonCode) REFERENCES momd..NoReturnHomeReasonLookup(NoReturnHomeReasonCode) ON UPDATE CASCADE   
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
    FOREIGN KEY (GenderCode) REFERENCES momd..GenderLookup(GenderCode), -- ON UPDATE CASCADE,
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier) ON UPDATE CASCADE
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
    PRIMARY KEY(Identifier),
    FOREIGN KEY (FamilyFileIdentifier) REFERENCES momd..FamilyFile(Identifier) ON UPDATE CASCADE,
    FOREIGN KEY (ChangeCode) REFERENCES momd..ChangeLookup(ChangeCode) ON UPDATE CASCADE
)
GO
