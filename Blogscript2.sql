USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 8/18/2016 8:43:30 AM ******/
CREATE DATABASE [Blog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\Blog.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Blog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\Blog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Blog] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blog] SET  MULTI_USER 
GO
ALTER DATABASE [Blog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Blog] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Blog]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog_Categories]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Categories](
	[BlogId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Blog_Categories] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[DatePosted] [date] NULL,
	[DateLastModified] [date] NULL,
	[Content] [text] NOT NULL,
	[PostStatus] [bit] NOT NULL,
	[ImagePath] [text] NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blogs_Tags]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs_Tags](
	[TagId] [int] NOT NULL,
	[BlogId] [int] NOT NULL,
 CONSTRAINT [PK_Blogs_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exhibits]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exhibits](
	[ExhibitId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [text] NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[PostStatus] [bit] NOT NULL,
	[DatePosted] [date] NULL,
	[DateLastModified] [date] NULL,
	[ImagePath] [text] NULL,
 CONSTRAINT [PK_StaticPages] PRIMARY KEY CLUSTERED 
(
	[ExhibitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[TagTitle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Weapons]    Script Date: 8/18/2016 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Weapons](
	[WeaponId] [int] IDENTITY(1,1) NOT NULL,
	[ExhibitId] [int] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[DateCreated] [date] NOT NULL,
	[DatePosted] [date] NULL,
	[DateLastModified] [date] NULL,
	[PostStatus] [bit] NOT NULL,
	[ComingSoon] [bit] NOT NULL,
	[ImagePath] [text] NULL,
 CONSTRAINT [PK_Weapons] PRIMARY KEY CLUSTERED 
(
	[WeaponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201608151818057_initdb', N'StabBlog.Migrations.Configuration', 0x1F8B0800000000000400DD5C5B6FDB36147E1FB0FF20E8691B522B97B5E802BB45EA245BB0E6823A2DF656D012ED0895284DA2D204C37ED91EF693F617762851375E74B115DB29060CB578F89DC3C38FE4217998FFFEF977FCF6C1F78C7B1CC56E4026E6C168DF3430B103C725CB8999D0C58BD7E6DB37DF7F373E73FC07E3532E77C4E4A0268927E61DA5E1B165C5F61DF6513CF25D3B0AE260414776E05BC809ACC3FDFD5FAC83030B038409588631FE9010EAFA38FD013FA701B1714813E45D060EF662FE1D4A6629AA71857C1C87C8C6137346D1FC9D172C4799A8699C782E023366D85B98062224A0888291C71F633CA3514096B3103E20EFF631C420B7405E8CB9F1C7A578D776EC1FB2765865C51CCA4E621AF83D010F8EB8632CB1FA4AEE350BC781EBCEC0C5F491B53A75DFC4BC7070FAE943E081034485C7532F62C213F3B25071128757988EF28AA30CF23C02B8AF41F4655445DC333AD7DB2B887438DA67FFED19D3C4A349842704273442DE9E7193CC3DD7FE1D3FDE065F30991C1DCC1747AF5FBE42CED1AB9FF1D1CB6A4BA1AD2057FB009F6EA220C411D8861745FB4DC3AAD7B3C48A45B54A9DCC2BC0251813A671891EDE63B2A477305A0E5F9BC6B9FB809DFC0B27D747E2C210824A344AE0E755E27968EEE1A2DC6AD4C9FEDFA0F5F0E5AB41B45EA17B779976BDA01F064E04E3EA03F6D2D2F8CE0DB3E155EBEFCF5CEC3C0A7CF6BBCEAFACF4F32C48229B3526D08ADCA2688969DDBAB15592B713A519D4F0B4CE51779FDACC5299DE4A51D6A0554642AE62D3A321B7F769F57666DC491842E7A5D4621E69229CB0528D84AA7B462E5092E6A02B690834E65B9E03CF7CE47A034C821DB440F0B170231F17AD7C1700E510E96DF30D8A6398039CDF507CD7603AFC7300D367D84E22A02670C80F9F5CDBCD5D40F055E2CF19E337A76BB0AEB9FD1A9C239B06D11961B5D6C67B1FD85F82849E11E71451FC91DA3920FB79EBFADD010631E7C4B6711C9F0399B1330D20B6CE012F083D3AEC0DC766A76D0721530FB9BE3A0A11E6D1CFB9681989A825A4684423A68A489A4C7D1F2C5DD2CDD45C546F6A26D16A2A17EB6B2A03EB662997D41B9A0AB4DA99490D16E3A53D347C9097C2EE7E94B7DEE2AD9B0B2A6E9CC10C897FC50447308D393788521C91B207BACC1BDB0816D2EE634A9F7C6D4A357D425E32B4AA9546433A090C3F1A52D8DD1F0DA999F0F9DE755854D261EB930B037C2779F5AEAA7DCC09966D7A38D49AB969E59B990374C3E5248E03DB4D4781E2D08B1F59D4ED8718CE683FBFC85A239E8140C380E82E5BF2E00BB4CD1449754D4EB18729364EECEC50708A621B39B21BA1414E0FC3F21555615879165237EE274927301D47AC12629BA01846AA4BA83C2C5C62BB21F25ABD24D4ECB884B1B6173AC492531C62C214B67AA28B72F5D10733A0D023744A9B87C6568571CD44D444ADBA3E6F0B61CB7E974E2436C2C996D859C34B1EBF3D09319B3DB6017236BBA48B01DA63BC6D1094EF55BA1240DCB8EC1A41851D9386A03CA4DA0841EB1EDB0241EB2E797604CDB6A85DFB5FD8AFEE1A3DEB1BE5CD2FEB8DEEDA02376BFED8316A66B127D4A1500347323D4FE7AC103F50C5E60CECE4FBB39887BA224518F80CD3FA914D19EF2AE350AB19442451136049B416507E0128014903AA8771F9595EA3753C8AE8019B9FBB35C2F2B95F80AD7040C6AE5E845604F5D7A522393BED3E8A96156C9048DE69B350C15110429CBCEA0DEFE014DDB9ACEC982EB1709F68B8D230DE190D0E6A895C354ECA1B33B897726AB67B491590F509C9D6F292103E69BC943766702F718EB63B491114F4080BD672517D091F68B0E5271DC56A53948DAD2C398A7F185B9A2CAAF1250A43972C2B5955FC8B31CB52AAA62F66FDD38DFC0CC3B26345D651616DA18906115A62A1145483A5E76E14D35344D11CB1739EA9E34B62CAB55533FDE72AABCBA7DC89F93A904BB37FF39B55E1DABEB6D0CA9108073887E6F92C9C49CFD0159DAFAE6EB01437E4A148716C3F0DBCC427FAE84A5F3BBBBCABD6CFBEC808634BB05F8A9E245749316EDDEF9D7A451E1143F45011B9ACDE4B7A089DAFF3B8B3EA6D5D2CAA47C98FA6AA28BAE3AAADF59A2E84E9DE536268D8BFA35A119E6644F17C942A00FFD413A392D2208155CABAA3D6B34EAA98F592EE88426A49155228EA61653581A46664B560253C8D47D512DD35C829235574B9B43BB22279A40AAD285E015B61B358D61D55915F5205561477C72E934DC4197487D72CED8665B5452BDBD0AEB76A69309E663A1C66D1ABDCDB57812A9F7B62F19B79098C7FDF492A697775AB51293BC4588F4A1A0CFD9C53BBEEAE4F398D77F47ACCDA1D766D5A6FBAC3D7E3F523EC93D242DAD1892285F6626727ECE0C67C37D5FE5846DA5E6522A691BB11C8F41853EC8F98C068F6A737F55CCC26F05CE012117781639AE56D9887FB0787C2939BDD79FE62C5B1E32976A3BA3730F53EDB400A16B947917D87223921628D272225A874D67C411CFC3031FF4A6B1DA7C716EC5FE9E73DE322FE48DC3F1328B88D126CFC2D27780E9332DFBCB7DAD1070EDDBD7AF1C7E7ACEA9E711DC1883936F6055FAED2C3F5670FBDACC9AAAE61CDCA8F219EEF80AABD3750A20A0362F5E70573970EF2B420B7F2071F3DFCD8D734E5F381B510154F0486C21BC485BA2700AB6069D3FF1DF849D3F4FF7E8D553F0758C534ED530097F407131F02749F86F29A5B5C6A141BA24D4C49A99F5B13A9D7CAAADCF6DA24E55BAF35D0E59CEA1E706BE44DAFC08C6796723CD8EAA8C8281E0C7B9BD47EF234E25DC91C2E733AB69B30BCC91CE186DBA06F2A35780792D914C939DB4F00DE34D77487B83B9E45D92FCD77C7C8C653B6B69FCCBB69B2E98E79779C6CBD5276778C6BDB5A3FB7CCB4CE4BE8D61370E55C22CD658CEA2CB82DC1363B38871DFE3C0012641165F62E529DD1D5948DDAA2B014D12BD5A792898AA58123E995249AD5F66B2B5FF01B1BCB659AD56A12309B74F3F9BF51379769D6AD496BDC466AB032B15095AEDD328F35E53E3DA754E05A4B5A32CFDB62D6C69BF5E794F93B88536AA3477347FC7C127D0771C99043A74762AF7CDD0B6B67E52F28C2FA1DBBCB1282FD3D4582EDDAAA59C85C9045902FDE8245B98870427389297260493D89A8BB4036856276C69C3EEC4ECFEDD84DC71C3B17E43AA16142A1C9D89F7BB5032F160434E94FB397EB368FAFC3F46F940CD10430D36567F3D7E45DE27A4E61F7B9E24C4803C1A20B7EA2CBFA92B293DDE563817415908E40DC7D4550748BFDD003B0F89ACCD03D5EC536A0DF7BBC44F6637902A80369EF88BADBC7A72E5A46C88F3946591F7E02871DFFE1CDFFA3E3FC6648540000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201608151826465_addNameToUser', N'StabBlog.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C4E8DE85A76D6F8CF88669CF226F03B6C46E0B2351BD12E5B511E4CBF2904FCA2FA42851375E24AA5B7DF16281C534593C552C5691C552D1FFFBCF7FC73FBD8681F582E3C48FC8C43E191DDB16266EE4F96439B153BAF8E193FDD38F7FFCC3F8CA0B5FAD5F0ABA334607234932B19F295D9D3B4EE23EE31025A3D077E328891674E446A183BCC8393D3EFE9B7372E26080B001CBB2C65F5242FD10673FE0E734222E5ED114057791878384B743CF2C43B5EE5188931572F1C49E5134FF1C44CB514E6A5B17818F408C190E16B685088928A220E4F9D704CF681C91E56C050D28787A5B61A05BA020C15CF8F38ADC741EC7A76C1E4E35B08072D38446614FC09333AE18471CBE967AED5271A0BA2B50317D63B3CED437B16F3C9C357D89025080C8F07C1AC48C7862DF952C2E92D53DA6A362E02887BC8E01EEB728FE3EAA231E59C6E38E4A433A1D1DB3FF8EAC691AD034C61382531AA3E0C87A4CE781EFFE03BF3D45DF31999C9DCC17679F3E7C44DED9C7BFE2B30FF599C25C81AED1004D8F71B4C231C88617E5FC6DCB698E73C481E5B0DA985C2B604BE013B675875E6F3159D267F096D34FB675EDBF62AF68E1C6F595F8E0423088C629FCBC4F8300CD035CF63BAD3CD9FF5BB89E7EF83808D77BF4E22FB3A517F883E3C4E0575F7090F526CFFE2A77AFC67A7FE364D77114B2DF4DFBCA7BBFCDA23476D964222DC9138A979836A51B3B95F11A9934831ADEAC0BD4C3376D26A96CDE4A5236A1753CA160B16B6F28E4DD2E5F638BBB58AD60F132D3621A693338E1A41A09438FAC82A0329A1353A3213099DFF31E78EDC709EDD808E19F46ACDB39DDA21D31BA0A911F0CB0AF1B7081786AE1C7212E17EE73045E8448EF6578444902DB9AF777943C6F5D4133ECA631781BB845B8DA3AB7C7E788E0FB349C3327DE1DAFC196E6E9B7E81AB9348AAF081BB531DE6DE47E8F527A45BC4B44F157EA1680ECE7931F9A030C22CE85EBE224B90663C6DE3482EB42017843E8D9696F38B6E1EE3BAE9A06C80FD5819570347C2B48ABE04A4D2105581A325590D526EA6DB4F48999A805A95ED49CA253544ED6575406662629A7D40B9A1174CA99530D16B6662B347CDC9AC11E7EE0BA593CA2DB0B6A6A9CC10E897FC604C7B08D798F88521C936A054CF68D7DC43FD9F231A65B3F9B324EBFA0201D9AD55ADE906D02C37B43067BF8DE908909CD2FBEC7A21283DB5C410CF046F4EA8B62B7CF0992EDDA1D1AD3DC35F3DDEC013A77B94892C8F5332F50E4F17816A6293FC47056774A269F8D98D6818981A1FBECC88316989B2D1AD503B9C401A6D8BA70F33CE714252EF26435C284BC1E821527AA42B02ABDD314EE2F124FB0741CB341885D8212F0549F50D92D7CE2FA2B14746A4918697884B1B9973CC49E4BBCC28431ECD48409737536870950F21116A54B4363A76671ED86A8895A756BDE15C256EB2E25597662931DB1B3C62E79FCB615C36CD7D80E8CB35D252602683393FB30507E57313500F1E27268062ADC983406CA43AA9D186853637B30D0A64ADE9D81E65754D3F517EEAB87669ECD8BF2EE8FF55675EDC1361BFA3830D3CC634F184361048E65F3BC9CB34EFC4A1597339093DFCF121EEA8A26C2C0679836533655BCAB8C439D7610D188DA002B43EB00E5DF342520C9A17A0857E4F25AA5E351440FD822EFD60ACBF77E01B666033276FDDB6E8D50FF0558344EA3DB4739B3D21A242337BA2CD4701406216E5ECD891B28459797951563120BF789866B13E38BD1A2A08EC855A3A46232836BA930CD6E2DA902B23E21D9465A12C2278D968AC90CAE256EA3DD4A5204053DC2828D54D43CC20772B622D3519E3665DFD8C9EBBD78C3D8D114868DEFD06AE59365AD508CB758B3BC4A6CFAC3AC7F05559863386EA228A42AA52D39D128464B2CF4026B9034FB7C7D89289A2396E7997AA144A63C5B35DB7FC1B27E7CCA8B589C030535FB37FFB22A5422340E5A3912E100D730BD908533590E5DB1F8EAE116ABDA43018A1569FB6914A421D14757FAD1F9C7BBFAF8BC4546183B82FC52F424A94A8A719B7A375A15D9238658A13272597F95F4103A5D1771675DDBBA58548F52A4A6EA28BA74D5DE564D17C298AF94181AF65FA84E84ED7854ADC4A60E526B36C7AA8A68EA5055AB3912AF92A9C3F0A69E18B5420B09ACD6678EDAAC85A963367BCC118582973AA4D0D543CA7A594B43C87AC75A781A8DAA29CC39C8852C7574B9B78755CA252D0DF394BBD7C056C82CF699A32AAA5EEAC08A6E73ECAA0446DCD70FF824D55EA3D63B4AF36BF66667A906633B9BF4304771AD9AA00E546BEE89C5EB052430DE7E90A6A4BD6BAE674A796A653353D260E8F79CC647F8E696D35A39A0C76C7C596F6CEB6D95057ABC7E06BB55B390EE992249C9BDBC6F0AF7CA31BFE375BF4A922E7D39896D156A04637A4B280E478C6034FB3598063E661B7841708788BFC009CDAB49ECD3E39353E16DD3E1BC337292C40B147764DD63A3E69AEDA0308CBCA0D87D46B15CA6B1C15B9C0A54CA80DF100FBF4EEC7F65A3CEB3640AFB57D67C64DD245F89FF6B0A1D4F718AAD7FCB65A7C3BC4D68BFF11DE84B1273ADDEFCF35B3EF4C87A88C163CEAD634197EBAC70F37D492F69F2A11B48B3F6AB93F7EB50D2C38E02F94F217AFD731D6E9DC71B1B81351E6828272CF8EAFAEF31E63E1DE42DC646F355BEB7D80851F1A66228BC4154A87B33B10E96F6BD84073F69F65EA2A72D2BDF4FAC239AF6ED844FFA83892F27CC77C862E41E4F41C55D6D17BB65A6E7CECAF38DCA50F77D6C4A05EA1B39BA5C84DE036E8342F3352CE39DD5680F76702B4AB007C3DEA7696FBDEEFA504AADAB2298FD5658EFB2A8BAE5F3D9EFAA96FA00AAFF14D54CFBAF98DEB5ADE9F2CB075E76DAAF2EFAC08C8DD7B8EDBFFA79D7C6A6CB401FB8B1F5AA713E305BDBD7F9B9674B333E42F75EB12C175F69BE13A9D2D45D15C9794E1F6EF8F3088C208F28F387A4EA12B8B6F2DD0E8615899EA9BEF64E642C398EC457A26867DB6FAEFCC06F9D2CA76967ABA9586DE3CDF7FF56DE9CA69DB7A60E741FB5D4CA4A4C557D7BC73ED6562CF69E6AA71B33E928D5EF8A595B3FFABFA752E94194D2F01ECDE7EBF753193D884A86749D1E95D0F29768383B6B7F4513CEEFC45F5610EC6F6A12EC364ECD92E6862CA2E2F016242A48840CCD1DA6C88323F522A6FE02B914BA598E397B099FE5EDD8978E39F66EC8434A57298529E3701E34125E2C0868E39F957B37651E3FACB23FEA32C414404C9FE5E61FC8E7D40FBC52EE6B454E4803C1A20B9ED1656B49596677F95622DD47C41088ABAF0C8A9E70B80A002C792033F482D7910DCCEF162F91FB5665007520DD0BD154FBF8D247CB188509C7A8C6C34FB0612F7CFDF1FF6C6D0F2A4C560000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Contributor')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Owner')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f6abc03-b9a5-496d-8fad-321c14925770', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'6f6abc03-b9a5-496d-8fad-321c14925770', N'richard@yahoo.com', 0, N'ALPjXY2huXvT6Tts3UqUBbMcUd8Q9dj2ZFD6mwWp0/Pnsgh87ayc7Gars80LoLMW2Q==', N'6d43ade9-a6ff-44ee-b188-89c2bfebd425', NULL, 0, 0, NULL, 1, 0, N'richard@yahoo.com', N'Richard', N'Head')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FirstName], [LastName]) VALUES (N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'ben@yahoo.com', 0, N'AMxJPjqEvVqj4YQDxRICXRUr3bJMy2J3/YRLlc+arM+qKQOuBXEpovsZkbiy9do2zg==', N'c1236e99-43a0-469e-b89a-a54ba95c2382', NULL, 0, 0, NULL, 1, 0, N'ben@yahoo.com', N'Ben', N'Dover')
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (1, 5)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (1, 7)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (1, 8)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (2, 8)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (6, 1)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (6, 5)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (7, 8)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (8, 1)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (8, 5)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (8, 7)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (9, 2)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (9, 7)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (10, 3)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (10, 5)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (11, 1)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (11, 5)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (12, 2)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (12, 4)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (12, 5)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (12, 7)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (12, 8)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (13, 1)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (13, 2)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (13, 3)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (14, 2)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (14, 4)
INSERT [dbo].[Blog_Categories] ([BlogId], [CategoryId]) VALUES (14, 7)
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (1, N'My Favorite Sword', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-03' AS Date), NULL, CAST(N'2016-08-04' AS Date), N'This is the content for "My favorite sword', 0, N'http://pre04.deviantart.net/ecc2/th/pre/i/2012/344/4/d/more_swords_by_thedarkestseason-d5noc1a.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (2, N'Game of Thrones Weapons', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-05' AS Date), NULL, CAST(N'2016-08-05' AS Date), N'This is the content for "Game of Thrones Weapons"', 0, N'http://www.barringtons-swords.com/media/catalog/product/cache/1/image/1200x1200/9df78eab33525d08d6e5fb8d27136e95/g/a/games_of_thrones_swords_longclaw_sword_of_jon_snow_image_4.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (6, N'Weights of Swords', N'6f6abc03-b9a5-496d-8fad-321c14925770', CAST(N'2016-08-10' AS Date), NULL, CAST(N'2016-08-11' AS Date), N'This is the content for "Weights of swords"', 0, N'http://www.thearma.org/essays/weights/swords1.JPG')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (7, N'Iconic Video Game Axes', N'6f6abc03-b9a5-496d-8fad-321c14925770', CAST(N'2016-08-12' AS Date), NULL, CAST(N'2016-08-12' AS Date), N'This is the content for Iconic video game axes', 0, N'https://www.walldevil.com/wallpapers/w01/thumb/538384-assassination-assassins-assassins-creed-assassins-creed-3-battles-british-army-connor-kenway-tomahawk-video-games.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (8, N'Did the Romans invent the kilt?', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p><strong>If the romans wore skirts could the be responsible for modern day&nbsp;scotland kilt design....</strong></p>
<p>Damn. I''m late&nbsp;for school. Oh, great scott. You get the cable, I''ll throw the rope down to you. The way I see it, if you''re gonna build a time machine into a car why not do it with some style. Besides, the stainless, steel construction made the flux dispersal- look out. Hello, Jennifer. Okay, okay you guys, oh ha ha ha very funny. Hey you guys are being real mature.</p>
<p>God dammit, I''m late. Ronald Reagon. What the hell is this? Let''s go. My insurance, it''s your car, your insurance should pay for it. Hey, I wanna know who''s gonna pay for this? I spilled beer all over it when that car smashed into me. Who''s gonna pay my cleaning bill?</p>
<p>Right, George. Well, good luck you guys. Oh, one other thing, if you guys ever have kids and one of them when he''s eight years old, accidentally sets fire to the living room rug, be easy on him. Hey, hey, I''ve seen this one, I''ve seen this one. This is a classic, this is where Ralph dresses up as the man from space. No, no, George, look, it''s just an act, right? Okay, so 9:00 you''re strolling through the parking lot, you see us struggling in the car, you walk up, you open the door and you say, your line, George. Alright, okay listen, keep your pants on, she''s over in the cafe. God, how do you do this? What made you change your mind, George? I know, and all I could say is I''m sorry.</p>
<p>Are those my clocks I hear? That''s a big bruise you have there. Right, George. Well, good luck you guys. Oh, one other thing, if you guys ever have kids and one of them when he''s eight years old, accidentally sets fire to the living room rug, be easy on him. Oh, yeah, yeah. The hell you doing to my car?</p>
<p>Not a word, not a word, not a word now. Quiet, uh, donations, you want me to make a donation to the coast guard youth auxiliary? Um, yeah well I might have sort of ran into my parents. What kind of date? I don''t know, what do kids do in the fifties? What? Who is that guy.</p>
<p>Alright, punk, now- No sir, I''m gonna make something out of myself, I''m going to night school and one day I''m gonna be somebody. Thank you, don''t forget to take a flyer. Shut your filthy mouth, I''m not that kind of girl. This sounds pretty heavy.</p>
<p>I''ve gotta go. C''mon. Flux capacitor. I''ll be at my grandma''s. Here, let me give you the number. Bye. Flux capacitor.</p>
<p>Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Doc, you gotta help me. you were the only one who knows how your time machine works. Well, I figured, what the hell. Doc. Hot, Jesus Christ, Doc. Jesus Christ, Doc, you disintegrated Einstein.</p>
<p>What kind of date? I don''t know, what do kids do in the fifties? About 30 years, it''s a nice round number. Hey you, get your damn hands off, oh. Doc, she didn''t even look at him. Yeah I know, If you put your mind to it you could accomplish anything.</p>
<p>No. Nothing. Watch it, Goldie. Wait a minute, wait a minute. 1:15 in the morning? What about George?</p>
<p>Good, there''s somebody I''d like you to meet. Lorraine. Well, I figured, what the hell. Working. Alright, I''m ready. I over slept, look I need your help. I have to ask Lorraine out but I don''t know how to do it. I have to ask Lorraine out but I don''t know how to do it.</p>
<p>Well, they''re bigger than me. Now, Biff, um, can I assume that your insurance is gonna pay for the damage? The car, Dad, I mean He wrecked it, totaled it. I needed that car tomorrow night, Dad, I mean do you have any idea how important this was, do you have any clue? What a nightmare. That''s a great idea. I''d love to park.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><img src="https://isleofharris.files.wordpress.com/2012/03/kilt_1024_dpa.jpg" width="191" height="255" /></p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/Pat%20-%20Roman%20Soldier%2060_zpsvdglrm6e.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (9, N'Joan of Java?', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p><strong>Just how did the Joan of Java&nbsp;revolutionize modern development training....</strong></p>
<p>&nbsp;</p>
<p>No no. Lorraine, Lorraine, what are you doing? No no no this sucker''s electrical, but I need a nuclear reaction to generate the one point twenty-one gigawatts of electricity that I need. That''s right. No no no no no, Marty, both you and Jennifer turn out fine. It''s your kids, Marty, something has got to be done about your kids. C''mon, more, dammit. Jeez. Holy shit. Let''s see if you bastards can do ninety.</p>
<p>whoa, whoa Doc, stuck here, I can''t be stuck here, I got a life in 1985. I got a girl. But, what are you blind McFly, it''s there. How else do you explain that wreck out there? Jesus, you smoke too? Doc, you gotta help- Marty, such a nice name.</p>
<p>Oh, then I wanna give her a call, I don''t want her to worry about you. Leave me alone. Alright, take it up, go. Doc. It''s about the future, isn''t it? A bolt of lightning, unfortunately, you never know when or where it''s ever gonna strike.</p>
<p>I don''t like her, Marty. Any girl who calls a boy is just asking for trouble. George, there''s nothing to be scared of. All it takes is a little self confidence. You know, if you put your mind to it, you could accomplish anything. That''s right. It''s information about the future isn''t it. I warned you about this kid. The consequences could be disastrous. Dammit, Doc, why did you have to tear up that letter? If only I had more time. Wait a minute, I got all the time I want I got a time machine, I''ll just go back and warn him. 10 minutes oughta do it. Time-circuits on, flux-capacitor fluxing, engine running, alright. No, no no no no, c''mon c''mon. C''mon c''mon, here we go, this time. Please, please, c''mon.</p>
<p>What do you mean you''ve seen this, it''s brand new. Doc, wait. No, bastards. Is she pretty? Hey Marty, I''m not your answering service, but you''re outside pouting about the car, Jennifer Parker called you twice. Time machine, I haven''t invented any time machine.</p>
<p>I don''t know, Doc, I guess she felt sorry for him cause her did hit him with the car, hit me with the car. Get out of town, I didn''t know you did anything creative. Ah, let me read some. Leave her alone, you bastard. Hey, Doc? Doc. Hello, anybody home? Einstein, come here, boy. What''s going on? Wha- aw, god. Aw, Jesus. Whoa, rock and roll. Yo Erased from existence.</p>
<p>Oh honey, he''s teasing you, nobody has two television sets. Sam, here''s the young man you hit with your car out there. He''s alright, thank god. George. Good morning, Mom. Oh, Marty, I almost forgot, Jennifer Parker called. C''mon.</p>
<p>A block passed Maple, that''s John F. Kennedy Drive. Did you hurt your head? Oh, thank you, thank you. Okay now, we run some industrial strength electrical cable from the top of the clocktower down to spreading it over the street between two lamp posts. Meanwhile, we out-fitted the vehicle with this big pole and hook which runs directly into the flux-capacitor. At the calculated moment, you start off from down the street driving toward the cable execrating to eighty-eight miles per hour. According to the flyer, at !0:04 pm lightning will strike the clocktower sending one point twenty-one gigawatts into the flux-capacitor, sending you back to 1985. Alright now, watch this. You wind up the car and release it, I''ll simulate the lightening. Ready, set, release. Huhh. What a nightmare. Ah, where''re my pants?</p>
<p>Hello. Who the hell is John F. Kennedy? George McFly? Oh, he''s kinda cute and all, but, well, I think a man should be strong, so he could stand up for himself, and protect the woman he loves. Don''t you? Why not? Yeah but George, Lorraine wants to go with you. Give her a break.</p>
<p>Oh, you make it sound so easy. I just, I wish I wasn''t so scared. Huh? I hope so. So tell me, future boy, who''s president of the United States in 1985? Say, why do you let those boys push you around like that?</p>
<p>Right. Don''t worry. As long as you hit that wire with the connecting hook at precisely 88 miles per hour, the instance the lightning strikes the tower, everything will be fine. Biff. Hey George, buddy, hey, I''ve been looking all over for you. You remember me, the guy who saved your life the other day. Why is she gonna get angry with you?</p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/Sarah%20-%20Joan%20of%20Arc_zpshufxti9y.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (10, N'Henry the Dave', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p>Was Henry the Dave all that bad...?</p>
<p>&nbsp;</p>
<p>Yet. Right. There, there, now, just relax. You''ve been asleep for almost nine hours now. Hello. Shape up, man. You''re a slacker. You wanna be a slacker for the rest of your life?</p>
<p>Never mind that, never mind that now, never mind that, never mind- Ahh. Okay, that''s enough. Now stop the microphone. I''m sorry fellas. I''m afraid you''re just too darn loud. Next, please. Where''s the next group, please. Ohh, no. Actually, people call me Marty.</p>
<p>Marty, I always wear a suit to the office. You alright? Holy shit. I''ll call you tonight. Well, Marty, I want to thank you for all your good advise, I''ll never forget it. Oh, oh Marty, here''s you keys. You''re all waxed up, ready for tonight.</p>
<p>Huh? David, watch your mouth. You come here and kiss your mother before you go, come here. Good morning. Alright, c''mon, I think we''re safe. Where does he come from?</p>
<p>This is uh, this is heavy duty, Doc, this is great. Uh, does it run on regular unleaded gasoline? Hot, Jesus Christ, Doc. Jesus Christ, Doc, you disintegrated Einstein. Nah, I just don''t think I''m cut out for music. You''re gonna be in the car with her. So tell me, Marty, how long have you been in port?</p>
<p>McFly. I don''t know, I can''t keep up with all of your boyfriends. George: you ever think of running for class president? Unroll their fire. You''re gonna break his arm. Biff, leave him alone. Let him go. Let him go.</p>
<p>What did I just say? What''s with the life preserver? Yeah. That''s right. Yeah well look, Marvin, Marvin, you gotta play. See that''s where they kiss for the first time on the dance floor. And if there''s no music, they can''t dance, and if they can''t dance, they can''t kiss, and if they can''t kiss, they can''t fall in love and I''m history.</p>
<p>I can''t play. Yeah man, that was good. Let''s do another one. That''s for messing up my hair. Now, of course not, Biff, now, I wouldn''t want that to happen. Marty, you interacted with anybody else today, besides me?</p>
<p>No no no, Doc, I just got here, okay, Jennifer''s here, we''re gonna take the new truck for a spin. In that case, I''ll tell you strait out. Hello, hello, anybody home? Think, McFly, think. I gotta have time to get them re-typed. Do you realize what would happen if I hand in my reports in your handwriting. I''ll get fired. You wouldn''t want that to happen would you? Would you? Look, there''s a rhythmic ceremonial ritual coming up. Wow, you must be rich.</p>
<p>After I fell off my toilet, I drew this. Where does he come from? What, what, ma? Is she pretty? I haven''t</p>
<p>Excuse me. Good, I''ll see you tonight. Don''t forget, now, 1:15 a.m., Twin Pines Mall. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Look me up when you get there, guess I''ll be about 47. Listen, I gotta go but I wanted to tell you that it''s been educational.</p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/Dave%20-%20Henry%20VIII%2060_zpsxm581q5v.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (11, N'Did cavemen invent sunglasses?', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p>Did cavemen invent sunglasses...?</p>
<p>We all make mistakes in life, children Ah, honey, your first novel. Wow, ah Red, you look great. Everything looks great. 1:24, I still got time. Oh my god. No, no not again, c''mon, c''mon. Hey. Libyans. Stop it. Oh yes sir.</p>
<p>What''s with the life preserver? Ah well, sort of. Oh, I''ve been so worried about you ever since you ran off the other night. Are you okay? I''m sorry I have to go. Isn''t he a dream boat? Uh, stories, science fiction stories, about visitors coming down to Earth from another planet. whoa, this is it, this is the part coming up, Doc.</p>
<p>George. I''m writing this down, this is good stuff. Hey not too early I sleep in Sunday''s, hey McFly, you''re shoe''s untied, don''t be so gullible, McFly. Flux capacitor. Excuse me.</p>
<p>Well, bring her along. This concerns her too. Well, what if they didn''t like them, what if they told me I was no good. I guess that would be pretty hard for somebody to understand. You know, Doc, you left your equipment on all week. Y''know this time it wasn''t my fault. The Doc set all of his clocks twenty-five minutes slow. Okay, real mature guys. Okay, Biff, will you pick up my books?</p>
<p>Precisely. That''s Calvin Klein, oh my god, he''s a dream. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here. Well yeah, you know we have two of them. Flux capacitor.</p>
<p>Let''s go. Yeah. Doc, look, all we need is a little plutonium. Well, Biff. That''s him.</p>
<p>Yeah well, I saw it on a rerun. Where does he come from? Nothing, nothing, nothing, look tell her destiny has brought you together, tell her that she''s the most beautiful you have ever seen. Girls like that stuff. What, what are you doing George? A bolt of lightning, unfortunately, you never know when or where it''s ever gonna strike. Oh, I''ve been so worried about you ever since you ran off the other night. Are you okay? I''m sorry I have to go. Isn''t he a dream boat?</p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/Victor%20-%20Caveman%2060_zpsxhovdcjx.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (12, N'Isaac Newton...original hipster', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p><strong>"I studied gravity before it was cool" says Isaac Newton</strong></p>
<p>&nbsp;</p>
<p>Because, you might regret it later in life. Whoa, wait a minute, Doc, are you telling me that my mother has got the hots for me? Yeah. Unfortunately no, it requires something with a little more kick, plutonium. My equipment, that reminds me, Marty, you better not hook up to the amplifier. There''s a slight possibility for overload.</p>
<p>Yeah. Good, there''s somebody I''d like you to meet. Lorraine. Well yeah, you know we have two of them. I don''t know, I can''t keep up with all of your boyfriends. No, Marty, we''ve already agreed that having information about the future could be extremely dangerous. Even if your intentions are good, they could backfire drastically. Whatever you''ve got to tell me I''ll find out through the natural course of time.</p>
<p>Yet. Uh Doc, uh no. No, don''t be silly. My equipment, that reminds me, Marty, you better not hook up to the amplifier. There''s a slight possibility for overload. C''mon, he''s not that bad. At least he''s letting you borrow the car tomorrow night. Now that''s a risk you''ll have to take you''re life depends on it.</p>
<p>Don''t tell me. Uh, you want me to buy a subscription to the Saturday Evening Post? Okay. Uh, well, I gotta go. Alright, okay. Alright, there she is, George. Just go in there and invite her. What did your mother ever see in that kid?</p>
<p>Look, George, I''m telling you George, if you do not ask Lorraine to that dance, I''m gonna regret it for the rest of my life. No, I refuse to except the responsibility. Huh? Let him go, Biff, you''re drunk. Yeah, he''s right here.</p>
<p>Take care. Okay, real mature guys. Okay, Biff, will you pick up my books? What? Sam, here''s the young man you hit with your car out there. He''s alright, thank god. It works, ha ha ha ha, it works. I finally invent something that works.</p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/Eric%20Ward%20-%20Sir%20Isaac%20Newton_zpsoofhsg1p.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (13, N'I want you...to use generics', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p>Generic or bust......</p>
<p>&nbsp;</p>
<p>My god, do you know what this means? It means that this damn thing doesn''t work at all. That''s right, twenty five years into the future. I''ve always dreamed on seeing the future, looking beyond my years, seeing the progress of mankind. I''ll also be able to see who wins the next twenty-five world series. C''mon, c''mon. He''s fine, and he''s completely unaware that anything happened. As far as he''s concerned the trip was instantaneous. That''s why Einstein''s watch is exactly one minute behind mine. He skipped over that minute to instantly arrive at this moment in time. Come here, I''ll show you how it works. First, you turn the time circuits on. This readout tell you where you''re going, this one tells you where you are, this one tells you where you were. You imput the destination time on this keypad. Say, you wanna see the signing of the declaration of independence, or witness the birth or Christ. Here''s a red-letter date in the history of science, November 5, 1955. Yes, of course, November 5, 1955. Hey Biff, check out this guy''s life preserver, dork thinks he''s gonna drown.</p>
<p>What a nightmare. Really. Hey. What? I know, and all I could say is I''m sorry.</p>
<p>Oh, I sure like her, Marty, she is such a sweet girl. Isn''t tonight the night of the big date? That''s good advice, Marty. Hey kid, what you do, jump ship? I''m telling the truth, Doc, you gotta believe me. Sam, quit fiddling with that thing and come in here and eat your dinner.</p>
<p>What? Alright, okay listen, keep your pants on, she''s over in the cafe. God, how do you do this? What made you change your mind, George? Hey Dad, George, hey, you on the bike. Which one''s your pop? It was meant to be. Anyway, if Grandpa hadn''t hit him, then none of you would have been born.</p>
<p>I''m writing this down, this is good stuff. Yeah, I guessed you''re a sailor, aren''t you, that''s why you wear that life preserver. Ah. I think it''s terrible. Girls chasing boys. When I was your age I never chased a boy, or called a boy, or sat in a parked car with a boy. And he could sleep in my room.</p>
<p>What''s that thing he''s on? Can''t be. This is nuts. Aw, c''mon. Over there, on my hope chest. I''ve never seen purple underwear before, Calvin. So tell me, future boy, who''s president of the United States in 1985? George.</p>
<p>Yeah, I guessed you''re a sailor, aren''t you, that''s why you wear that life preserver. Let''s get you into a radiation suit, we must prepare to reload. Marty, will we ever see you again? Is she pretty? Hey, Doc? Doc. Hello, anybody home? Einstein, come here, boy. What''s going on? Wha- aw, god. Aw, Jesus. Whoa, rock and roll. Yo</p>
<p>Nothing''s coming to my mind. That''s true, Marty, I think you should spend the night. I think you''re our responsibility. I need fuel. Go ahead, quick, get in the car. Hey boy, are you alright? Good morning.</p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/1470776527515_zpssiivu8yo.jpg')
INSERT [dbo].[Blogs] ([BlogId], [Title], [UserId], [DateCreated], [DatePosted], [DateLastModified], [Content], [PostStatus], [ImagePath]) VALUES (14, N'Why kids make the best workforce', N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), NULL, N'<p><strong>Small hands means they can get in those hard to reach places in your heavy&nbsp;machinery.</strong></p>
<p>&nbsp;</p>
<p>Sam, quit fiddling with that thing and come in here and eat your dinner. I know what you''re gonna say, son, and you''re right, you''re right, But Biff just happens to be my supervisor, and I''m afraid I''m not very good at confrontations. Right check, Doc. After I fell off my toilet, I drew this. Well gee, I don''t know.</p>
<p>Oh, oh Marty, here''s you keys. You''re all waxed up, ready for tonight. Say, why do you let those boys push you around like that? Hey. What the hell is this? Excuse me.</p>
<p>Yeah, alright, bye-bye. What? Biff. Huh? Jesus, George, it''s a wonder I was ever born. Listen, Doc, you know there''s something I haven''t told you about the night we made that tape.</p>
<p>Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Jennifer. Let''s put him in there. George McFly? Oh, he''s kinda cute and all, but, well, I think a man should be strong, so he could stand up for himself, and protect the woman he loves. Don''t you? Oh hey, Biff, hey, guys, how are you doing?</p>
<p>A colored mayor, that''ll be the day. David, watch your mouth. You come here and kiss your mother before you go, come here. Alright kid, you stick to your father like glue and make sure that he takes her to the dance. A bolt of lightning, unfortunately, you never know when or where it''s ever gonna strike. Wow, ah Red, you look great. Everything looks great. 1:24, I still got time. Oh my god. No, no not again, c''mon, c''mon. Hey. Libyans.</p>
<p>Doc, Doc, it''s me, Marty. This Saturday night, mostly clear, with some scattered clouds. Lows in the upper forties. That''s Calvin Klein, oh my god, he''s a dream. Yeah man, that was good. Let''s do another one. Nothing.</p>
<p>Pretty Mediocre photographic fakery, they cut off your brother''s hair. He''s a peeping tom. Dad. Yeah, but you''re uh, you''re so, you''re so thin. Why am I always the last one to know about these things. Good, you could start by sweeping the floor.</p>
<p>Something that really cooks. Alright, alright this is an oldie, but uh, it''s an oldie where I come from. Alright guys, let''s do some blues riff in b, watch me for the changes, and uh, try and keep up, okay. It''s cold, damn cold. Ha, ha, ha, Einstein, you little devil. Einstein''s clock is exactly one minute behind mine, it''s still ticking. Hey, hey, I''ve seen this one, I''ve seen this one. This is a classic, this is where Ralph dresses up as the man from space. So tell me, Marty, how long have you been in port? I swiped it from the old lady''s liquor cabinet.</p>', 1, N'http://i350.photobucket.com/albums/q405/brendanfitzpa7/Eric%20-%20Industrial%20Revolution_zpsosenzajc.jpg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (1, 1)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (1, 2)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (1, 6)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (2, 6)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (3, 2)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (3, 7)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (7, 2)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (10, 1)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (10, 6)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (12, 1)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (13, 1)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (15, 7)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (17, 6)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (22, 8)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (23, 8)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (24, 8)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (25, 9)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (26, 9)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (27, 9)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (28, 10)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (29, 10)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (30, 11)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (31, 11)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (32, 11)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (33, 12)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (34, 12)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (35, 12)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (36, 13)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (37, 13)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (38, 13)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (39, 13)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (40, 14)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (41, 14)
INSERT [dbo].[Blogs_Tags] ([TagId], [BlogId]) VALUES (42, 14)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Ancient Weapons')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Medieval Weapons')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Early Modern Weapons')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Modern Weapons')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Random')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (7, N'Mythology Weapons')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (8, N'Fictional Weapons')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Exhibits] ON 

INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (2, N'<p>asdfsdf</p>', N'Wsdffgsdfgf', CAST(N'2016-08-02' AS Date), N'6f6abc03-b9a5-496d-8fad-321c14925770', 0, NULL, CAST(N'2016-08-17' AS Date), NULL)
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (3, N'<p>asdfsdf</p>', N'asdfsadfasdfasdf', CAST(N'2016-08-07' AS Date), N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', 0, NULL, CAST(N'2016-08-17' AS Date), NULL)
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (5, N'<p>This is the content for the exhibit "The Evolution of Armor"</p>
<p>Hey, not too early I sleep in on Saturday. Oh, McFly, your shoe''s untied. Don''t be so gullible, McFly. You got the place fixed up nice, McFly. I have you''re car towed all the way to your house and all you''ve got for me is light beer. What are you looking at, butthead. Say hi to your mom for me. No, bastards. What? Kids, we''re gonna have to eat this cake by ourselves, Uncle Joey didn''t make parole again. I think it would be nice, if you all dropped him a line. That''s right.</p>
<p>Wrecked? He''s your brother, Mom. Oh, yeah, yeah. Ah, honey, your first novel. Hi.</p>
<p>Never mind that, never mind that now, never mind that, never mind- No no no this sucker''s electrical, but I need a nuclear reaction to generate the one point twenty-one gigawatts of electricity- he''s an idiot, comes from upbringing, parents were probably idiots too. Lorraine, if you ever have a kid like that, I''ll disown you. Hi, it''s really a pleasure to meet you. Right, George. Well, good luck you guys. Oh, one other thing, if you guys ever have kids and one of them when he''s eight years old, accidentally sets fire to the living room rug, be easy on him.</p>
<p>Yeah. Silence Earthling. my name is Darth Vader. I''m am an extra-terrestrial from the planet Vulcan. Bet your ass it works. I know, and all I could say is I''m sorry. Don''t tell me anything.</p>
<p>Huh? No. No, fine, no , good, fine, good. Hey kid, what you do, jump ship? Well, aren''t you going up to the lake tonight, you''ve been planning it for two weeks.</p>
<p>Hey. They''re late. My experiment worked. They''re all exactly twenty-five minutes slow. No, it was The Enchantment Under The Sea Dance. Our first date. It was the night of that terrible thunderstorm, remember George? Your father kissed me for the very first time on that dance floor. It was then I realized I was going to spend the rest of my life with him. You okay, is everything alright? Well, ma, we talked about this, we''re not gonna go to the lake, the car''s wrecked.</p>
<p>No, Biff, you leave her alone. There, there, now, just relax. You''ve been asleep for almost nine hours now. Um, well it''s a delorean, right? Look, there''s a rhythmic ceremonial ritual coming up. 1955? You''re my ma- you''re my ma.</p>
<p>Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of- I swiped it from the old lady''s liquor cabinet. No, get out of town, my mom thinks I''m going camping with the guys. Well, Jennifer, my mother would freak out if she knew I was going up there with you. And I get this standard lecture about how she never did that kind of stuff when she was a kid. Now look, I think she was born a nun. Say that again. No wait, Doc, the bruise, the bruise on your head, I know how that happened, you told me the whole story. you were standing on your toilet and you were hanging a clock, and you fell, and you hit your head on the sink, and that''s when you came up with the idea for the flux capacitor, which makes time travel possible.</p>', N'The Evolution of Armors', CAST(N'2016-08-10' AS Date), N'6f6abc03-b9a5-496d-8fad-321c14925770', 0, NULL, CAST(N'2016-08-17' AS Date), NULL)
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (6, N'<p>This is the content for the exhibit "Bow and Arrow Weaponry from Around the World</p>
<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>You wait and see, Mr. Caruthers, I will be mayor and I''ll be the most powerful mayor in the history of Hill Valley, and I''m gonna clean up this town. What''s with the life preserver? Doc, wait. No, bastards. Yeah. I''ve gotta go.</p>
<p>Actually, people call me Marty. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Now that''s a risk you''ll have to take you''re life depends on it. George, aren''t you gonna kiss me? I haven''t</p>
<p>Doc, you gotta help- Are you sure about this storm? The hell you doing to my car? That''s him. Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of-</p>
<p>That''s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Watch it, Goldie. Of course, from a group of Libyan Nationalists. They wanted me to build them a bomb, so I took their plutonium and in turn gave them a shiny bomb case full of used pinball machine parts. It works, ha ha ha ha, it works. I finally invent something that works. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here.</p>', N'Bow and Arrow Weaponry from Around the World', CAST(N'2016-08-10' AS Date), N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', 0, NULL, CAST(N'2016-08-17' AS Date), NULL)
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (8, N'<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>You wait and see, Mr. Caruthers, I will be mayor and I''ll be the most powerful mayor in the history of Hill Valley, and I''m gonna clean up this town. What''s with the life preserver? Doc, wait. No, bastards. Yeah. I''ve gotta go.</p>
<p>Actually, people call me Marty. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Now that''s a risk you''ll have to take you''re life depends on it. George, aren''t you gonna kiss me? I haven''t</p>
<p>Doc, you gotta help- Are you sure about this storm? The hell you doing to my car? That''s him. Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of-</p>
<p>That''s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Watch it, Goldie. Of course, from a group of Libyan Nationalists. They wanted me to build them a bomb, so I took their plutonium and in turn gave them a shiny bomb case full of used pinball machine parts. It works, ha ha ha ha, it works. I finally invent something that works. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here.</p>', N'Bows and Arrows', CAST(N'2016-08-17' AS Date), N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', 0, NULL, NULL, NULL)
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (9, N'<p>Weapons in the show, Game of Thrones</p>
<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>You wait and see, Mr. Caruthers, I will be mayor and I''ll be the most powerful mayor in the history of Hill Valley, and I''m gonna clean up this town. What''s with the life preserver? Doc, wait. No, bastards. Yeah. I''ve gotta go.</p>
<p>Actually, people call me Marty. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Now that''s a risk you''ll have to take you''re life depends on it. George, aren''t you gonna kiss me? I haven''t</p>
<p>Doc, you gotta help- Are you sure about this storm? The hell you doing to my car? That''s him. Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of-</p>
<p>That''s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Watch it, Goldie. Of course, from a group of Libyan Nationalists. They wanted me to build them a bomb, so I took their plutonium and in turn gave them a shiny bomb case full of used pinball machine parts. It works, ha ha ha ha, it works. I finally invent something that works. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here.</p>', N'Game of Thrones', CAST(N'2016-08-17' AS Date), N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', 1, CAST(N'2016-08-18' AS Date), CAST(N'2016-08-18' AS Date), NULL)
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (12, N'<p>Weapons in the show, Game of Thrones</p>
<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>You wait and see, Mr. Caruthers, I will be mayor and I''ll be the most powerful mayor in the history of Hill Valley, and I''m gonna clean up this town. What''s with the life preserver? Doc, wait. No, bastards. Yeah. I''ve gotta go.</p>
<p>Actually, people call me Marty. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Now that''s a risk you''ll have to take you''re life depends on it. George, aren''t you gonna kiss me? I haven''t</p>
<p>Doc, you gotta help- Are you sure about this storm? The hell you doing to my car? That''s him. Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of-</p>
<p>That''s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Watch it, Goldie. Of course, from a group of Libyan Nationalists. They wanted me to build them a bomb, so I took their plutonium and in turn gave them a shiny bomb case full of used pinball machine parts. It works, ha ha ha ha, it works. I finally invent something that works. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here.</p>', N'Game  of Thrones', CAST(N'2016-08-18' AS Date), N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', 1, CAST(N'2016-08-18' AS Date), NULL, N'http://screenrant.com/wp-content/uploads/Game-of-Thrones-Battle-of-the-Bastards-Wildlings.jpg')
INSERT [dbo].[Exhibits] ([ExhibitId], [Content], [Title], [DateCreated], [UserId], [PostStatus], [DatePosted], [DateLastModified], [ImagePath]) VALUES (13, N'<p>Bacon ipsum dolor amet ham leberkas meatloaf cupim tenderloin. Ham beef turkey, biltong jowl swine picanha tail venison rump shoulder. Meatloaf bresaola landjaeger picanha brisket. Tenderloin meatloaf ball tip ground round, beef meatball tail sausage jowl.</p>
<p>Turducken doner chicken frankfurter strip steak meatloaf flank ribeye, bresaola beef ribs pastrami pancetta brisket short loin. Filet mignon spare ribs pork loin frankfurter corned beef sausage shank flank boudin strip steak beef pancetta ham. Sirloin tail swine, pancetta cupim shank cow hamburger meatball kielbasa tongue venison corned beef chicken meatloaf. Brisket turkey doner filet mignon. Shank tri-tip beef ribs ham kielbasa, jerky rump turkey alcatra tongue pork loin beef tail doner flank. Strip steak tri-tip doner short loin. Pastrami sirloin pork chop ground round shank pork loin.</p>
<p>Boudin ham hock chuck flank frankfurter. T-bone filet mignon doner meatloaf pork belly drumstick biltong tail chicken kevin shoulder hamburger picanha. Spare ribs pastrami venison, short ribs chicken tenderloin tail flank. Pork belly chicken ground round cow ball tip leberkas prosciutto shankle strip steak pork loin beef flank kielbasa t-bone filet mignon. Rump pork belly cupim tenderloin t-bone shankle.</p>
<p>Pork belly tail prosciutto short loin jowl. Kevin short loin brisket shankle jowl cupim spare ribs pancetta. Doner jowl pig, short ribs rump boudin alcatra biltong shankle. Beef ribs strip steak pork ham hock tenderloin ground round corned beef boudin biltong shank turducken pork chop. Ground round rump jowl venison ham hock, swine frankfurter turkey sausage. Porchetta beef ribs shank spare ribs andouille boudin.</p>
<p>Ham hock short ribs meatball flank. Ground round short ribs drumstick ham hock porchetta pig. Tenderloin hamburger landjaeger strip steak pork chop biltong leberkas pork loin pork belly ham hock meatball ground round spare ribs. Bacon tri-tip pork loin cupim kielbasa hamburger turkey strip steak. Ham tri-tip bresaola corned beef picanha. Meatball pancetta spare ribs strip steak filet mignon, pork loin drumstick boudin prosciutto tongue biltong beef ribs short loin turkey picanha.</p>', N'Bows of the world', CAST(N'2016-08-18' AS Date), N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', 1, CAST(N'2016-08-18' AS Date), NULL, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSejmF_iCz4fDEMSWJMyjuGfdjXA_9keSzpUyr3hFbr4JgyWt9FZHUwg')
SET IDENTITY_INSERT [dbo].[Exhibits] OFF
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (1, N'Sword')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (2, N'Shield')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (3, N'Axe')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (4, N'Armor')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (5, N'BowandArrow')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (6, N'SiegeWeapon')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (7, N'TortureDevice')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (8, N'Cannon')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (9, N'Spear')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (10, N'Roman')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (11, N'Greek')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (12, N'Persian')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (13, N'Asian')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (14, N'British')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (15, N'Norman')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (16, N'Gothic')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (17, N'Byzantine')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (18, N'asds')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (19, N'sdf')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (20, N'asdasd')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (21, N'asdads')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (22, N'Pat')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (23, N'Kilt')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (24, N'Freeballin')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (25, N'Sarah')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (26, N'CodeCutsLikeASword')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (27, N'Revolution')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (28, N'Dave')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (29, N'KingOfNet')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (30, N'Victor')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (31, N'HastaLaVista')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (32, N'LoinCloth')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (33, N'Eric')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (34, N'Stash')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (35, N'Apple')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (36, N'Randal')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (37, N'Sam')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (38, N'Generic')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (39, N'Frameworks')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (40, N'OtherEric')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (41, N'F@%$')
INSERT [dbo].[Tags] ([TagId], [TagTitle]) VALUES (42, N'Shorts')
SET IDENTITY_INSERT [dbo].[Tags] OFF
SET IDENTITY_INSERT [dbo].[Weapons] ON 

INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (8, 5, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'Sarrisae', N'<p>Long spear, up to 21 feet, Used in conjunction with the phalanx formation, this made an impregnable wall of spears</p>
<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>&nbsp;</p>', CAST(N'2016-08-01' AS Date), CAST(N'2016-08-01' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'http://oi55.tinypic.com/nz1yf5.jpg')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (9, 9, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'Kopis', N'<p>Curved sword used by Hoplites mounted on horseback</p>
<p>&nbsp;</p>
<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>You wait and see, Mr. Caruthers, I will be mayor and I''ll be the most powerful mayor in the history of Hill Valley, and I''m gonna clean up this town. What''s with the life preserver? Doc, wait. No, bastards. Yeah. I''ve gotta go.</p>
<p>Actually, people call me Marty. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Now that''s a risk you''ll have to take you''re life depends on it. George, aren''t you gonna kiss me? I haven''t</p>
<p>Doc, you gotta help- Are you sure about this storm? The hell you doing to my car? That''s him. Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of-</p>
<p>That''s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Watch it, Goldie. Of course, from a group of Libyan Nationalists. They wanted me to build them a bomb, so I took their plutonium and in turn gave them a shiny bomb case full of used pinball machine parts. It works, ha ha ha ha, it works. I finally invent something that works. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here.</p>', CAST(N'2016-08-01' AS Date), CAST(N'2016-08-02' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'http://vignette1.wikia.nocookie.net/deadliestwarrior/images/a/a8/044-1-.jpg/revision/latest?cb=20100706001759')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (11, 6, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'Akontia ', N'<p>Javelin, used by light infantry</p>
<p>&nbsp;</p>
<p>I''ll be at my grandma''s. Here, let me give you the number. Bye. Yeah. Weight has nothing to do with it. Hey I''m talking to you, McFly, you Irish bug. After I fell off my toilet, I drew this.</p>
<p>The only way we''re gonna get those two to successfully meet is if they''re alone together. So you''ve got to get your father and mother to interact at some sort of social- Huh? Never mind that now, never mind that now. Yeah. Let''s get you into a radiation suit, we must prepare to reload.</p>
<p>Ahh. Save the clock tower, save the clock tower. Mayor Wilson is sponsoring an initiative to replace that clock. Thirty years ago, lightning struck that clock tower and the clock hasn''t run since. We at the Hill Valley Preservation Society think it should be preserved exactly the way it is as part of our history and heritage. Alright, let''s set your destination time. This is the exact time you left. I''m gonna send you back at exactly the same time. It''s be like you never left. Now, I painted a white line on the street way over there, that''s where you start from. I''ve calculated the distance and wind resistance fresh to active from the moment the lightning strikes, at exactly 7 minutes and 22 seconds. When this alarm goes off you hit the gas. Hey man, the dance is over. Unless you know someone else who could play the guitar. Uh, well, okay Biff, uh, I''ll finish that on up tonight and I''ll bring it over first thing tomorrow morning.</p>
<p>You wait and see, Mr. Caruthers, I will be mayor and I''ll be the most powerful mayor in the history of Hill Valley, and I''m gonna clean up this town. What''s with the life preserver? Doc, wait. No, bastards. Yeah. I''ve gotta go.</p>
<p>Actually, people call me Marty. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. Now that''s a risk you''ll have to take you''re life depends on it. George, aren''t you gonna kiss me? I haven''t</p>
<p>Doc, you gotta help- Are you sure about this storm? The hell you doing to my car? That''s him. Good evening, I''m Doctor Emmet Brown, I''m standing here on the parking lot of-</p>
<p>That''s a Florence Nightingale effect. It happens in hospitals when nurses fall in love with their patients. Go to it, kid. Watch it, Goldie. Of course, from a group of Libyan Nationalists. They wanted me to build them a bomb, so I took their plutonium and in turn gave them a shiny bomb case full of used pinball machine parts. It works, ha ha ha ha, it works. I finally invent something that works. I''m sure that in 1985, plutonium is available at every corner drug store, but in 1955, it''s a little hard to come by. Marty, I''m sorry, but I''m afraid you''re stuck here.</p>', CAST(N'2016-08-01' AS Date), CAST(N'2016-08-01' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'http://deepeeka.in/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/a/h/xah6126_1.jpg.pagespeed.ic.SIyFJras7e.jpg')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (12, 6, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Corinthian Helmet', N'<p>The earliest standard hoplite helmet, developed around 600 BC</p>
<p>asdfffffffffff</p>
<p>I hope you don''t mind but George asked if he could take me home. I''m telling the truth, Doc, you gotta believe me. Wrecked? Watch this. Not me, the car, the car. My calculations are correct, when this baby hits eighty-eight miles per hour, your gonna see some serious shit. Watch this, watch this. Ha, what did I tell you, eighty-eight miles per hour. The temporal displacement occurred at exactly 1:20 a.m. and zero seconds. What about George?</p>
<p>I can''t believe you loaned me a car, without telling me it had a blindspot. I could''ve been killed. Oh. Sam, quit fiddling with that thing and come in here and eat your dinner. Mom, Dad. Okay, that''s enough. Now stop the microphone. I''m sorry fellas. I''m afraid you''re just too darn loud. Next, please. Where''s the next group, please.</p>
<p>Roads? Where we''re going we don''t need roads. Leave me alone. Right, George. Well, good luck you guys. Oh, one other thing, if you guys ever have kids and one of them when he''s eight years old, accidentally sets fire to the living room rug, be easy on him. Right. Doc, you gotta help me. you were the only one who knows how your time machine works.</p>', CAST(N'2016-08-02' AS Date), CAST(N'2016-08-02' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwL1sOtdzz1Ov33380IkDaU05ypDnOwUtQP5J5GEKXdLd6hq0Vw7R_R3U')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (13, 9, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Battle Axe', N'<p>Battle axes were specialized versions of utility axes. Many were suitable for use in one hand, while others were larger and were deployed two-handed</p>', CAST(N'2016-08-04' AS Date), CAST(N'2016-08-06' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'http://vignette1.wikia.nocookie.net/elderscrolls/images/f/f6/SteelBattleAxe_SK.png/revision/latest?cb=20121012192819')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (14, 3, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'Halberdwertwertwertw', N'<p>The halberd consists of an axe blade topped with a spike mounted on a long shaft. It always has a hook or thorn on the back side of the axe blade for grappling mounted combatants.wetwertret</p>', CAST(N'2016-08-04' AS Date), CAST(N'2016-08-04' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, NULL)
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (16, 3, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Throwing axe', N'A throwing axe is a weapon used during the Middle Ages by foot soldiers and knights occasionall', CAST(N'2016-08-05' AS Date), CAST(N'2016-08-05' AS Date), CAST(N'2016-08-05' AS Date), 1, 0, NULL)
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (18, 5, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Chain Mail', N'<p>Armor tha consisted of tiny links of steel, allowed for more flexible movement during battle</p>', CAST(N'2016-08-06' AS Date), CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2WEtXzKf-ozzFnvUE2LSLuSeq3nAKNOe_jh94Vs6GqUUh8mgxq2Fng')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (19, 5, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'Plate Armor', N'Plates made up of various strong materials', CAST(N'2016-08-07' AS Date), NULL, CAST(N'2016-08-08' AS Date), 0, 0, NULL)
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (20, 5, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'Helemts', N'<p>Used to protect the head, vast amount of variety between helmets throughout history.</p>', CAST(N'2016-08-07' AS Date), CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), 1, 0, N'http://ecx.images-amazon.com/images/I/71xISrO8zmL._SL1200_.jpg')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (21, 13, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Recurve Bow', N'<p>A bow with the tips curving away from the archer. The curves straighten out as the bow is drawn and the return of the tip to its curved state after release of the arrow adds extra velocity to the arrow.</p>', CAST(N'2016-08-10' AS Date), CAST(N'2016-08-10' AS Date), CAST(N'2016-08-18' AS Date), 1, 0, N'http://ecx.images-amazon.com/images/I/61PSx0PSLXL._SL1500_.jpg')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (22, 6, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'LongBowdsafadsf', N'<p>A self bow with limbs rounded in cross-section, about the same height as the archer so as to allow a full draw, usually over 5 feet (1.5 metres) long. The traditional English longbow was usually made of yew wood, but other woods are also used.sdafasfd</p>', CAST(N'2016-08-09' AS Date), NULL, CAST(N'2016-08-17' AS Date), 0, 0, N'http://vignette1.wikia.nocookie.net/deadliestwarrior/images/a/a8/044-1-.jpg/revision/latest?cb=20100706001759')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (23, 6, N'6f6abc03-b9a5-496d-8fad-321c14925770', N'CrossBowasdfasdfds', N'<p>In a crossbow, the limbs of the bow, called a prod, are attached at right angles to a crosspiece or stock in order to allow for mechanical pulling and holding of the string. The mechanism that holds the drawn string has a release or trigger that allows the string to be released. aSF ASDFDSF</p>', CAST(N'2016-08-08' AS Date), NULL, CAST(N'2016-08-17' AS Date), 0, 0, N'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwL1sOtdzz1Ov33380IkDaU05ypDnOwUtQP5J5GEKXdLd6hq0Vw7R_R3U')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (24, 12, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Club', N'<p>club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club v</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club v</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club vclub&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club&nbsp;club v</p>', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), CAST(N'2016-08-18' AS Date), 1, 0, N'http://www.californiabrittanyclub.com/wp-content/uploads/2016/06/dj_tiesto_club_life_img434.jpg')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (25, 12, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Longclaw', N'<p>Yeah, gimme a Tab. Silence Earthling. my name is Darth Vader. I''m am an extra-terrestrial from the planet Vulcan. Oh no, don''t touch that. That''s some new specialized weather sensing equipment. Yeah well, I saw it on a rerun. Okay.</p>
<p>Say, why do you let those boys push you around like that? This sounds pretty heavy. Nothing''s coming to my mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You extol me with a lot of confidence, Doc.</p>
<p>Listen, Doc, you know there''s something I haven''t told you about the night we made that tape. That''s George McFly? Ho ho ho, look at it roll. Now we could watch Jackie Gleason while we eat. Hi, it''s really a pleasure to meet you. Watch this. Not me, the car, the car. My calculations are correct, when this baby hits eighty-eight miles per hour, your gonna see some serious shit. Watch this, watch this. Ha, what did I tell you, eighty-eight miles per hour. The temporal displacement occurred at exactly 1:20 a.m. and zero seconds.</p>', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), CAST(N'2016-08-18' AS Date), 1, 0, N'http://www.cfswords.com/sword-blog/wp-content/uploads/2015/02/Long-Claw-Game-Of-Thrones-Sword-300x300.jpg')
INSERT [dbo].[Weapons] ([WeaponId], [ExhibitId], [UserId], [Title], [Content], [DateCreated], [DatePosted], [DateLastModified], [PostStatus], [ComingSoon], [ImagePath]) VALUES (26, 12, N'b4392d91-8f17-4f7d-be6a-b9e39cac023c', N'Needle', N'<p>No no no this sucker''s electrical, but I need a nuclear reaction to generate the one point twenty-one gigawatts of electricity- And he could sleep in my room. Okay, okay you guys, oh ha ha ha very funny. Hey you guys are being real mature. Yeah well, you shouldn''t drink. That''s George McFly?</p>
<p>Marty, I always wear a suit to the office. You alright? I said the keys are in here. Why not? What kind of date? I don''t know, what do kids do in the fifties? God dammit, I''m late.</p>
<p>Let him go, Biff, you''re drunk. I''m gonna be at the dance. Doc, I''m from the future. I came here in a time machine that you invented. Now, I need your help to get back to the year 1985. Well, it will just happen. Like the way I met your father. C''mon.</p>', CAST(N'2016-08-17' AS Date), CAST(N'2016-08-17' AS Date), CAST(N'2016-08-18' AS Date), 1, 0, N'data:image/jpeg;base64,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')
SET IDENTITY_INSERT [dbo].[Weapons] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/18/2016 8:43:31 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/18/2016 8:43:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/18/2016 8:43:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/18/2016 8:43:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/18/2016 8:43:31 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/18/2016 8:43:31 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blog_Categories]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Categories_Blogs] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([BlogId])
GO
ALTER TABLE [dbo].[Blog_Categories] CHECK CONSTRAINT [FK_Blog_Categories_Blogs]
GO
ALTER TABLE [dbo].[Blog_Categories]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Categories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Blog_Categories] CHECK CONSTRAINT [FK_Blog_Categories_Categories]
GO
ALTER TABLE [dbo].[Blogs_Tags]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Tags_Blogs] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([BlogId])
GO
ALTER TABLE [dbo].[Blogs_Tags] CHECK CONSTRAINT [FK_Blogs_Tags_Blogs]
GO
ALTER TABLE [dbo].[Blogs_Tags]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Tags_Tags] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([TagId])
GO
ALTER TABLE [dbo].[Blogs_Tags] CHECK CONSTRAINT [FK_Blogs_Tags_Tags]
GO
ALTER TABLE [dbo].[Weapons]  WITH CHECK ADD  CONSTRAINT [FK_Weapons_Exhibits] FOREIGN KEY([ExhibitId])
REFERENCES [dbo].[Exhibits] ([ExhibitId])
GO
ALTER TABLE [dbo].[Weapons] CHECK CONSTRAINT [FK_Weapons_Exhibits]
GO
USE [master]
GO
ALTER DATABASE [Blog] SET  READ_WRITE 
GO
