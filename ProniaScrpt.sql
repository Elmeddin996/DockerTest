USE [master]
GO
/****** Object:  Database [ProniaProject]    Script Date: 7/3/2023 10:34:35 PM ******/
CREATE DATABASE [ProniaProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProniaProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProniaProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProniaProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProniaProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProniaProject] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProniaProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProniaProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProniaProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProniaProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProniaProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProniaProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProniaProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProniaProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProniaProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProniaProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProniaProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProniaProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProniaProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProniaProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProniaProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProniaProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProniaProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProniaProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProniaProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProniaProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProniaProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProniaProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProniaProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProniaProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProniaProject] SET  MULTI_USER 
GO
ALTER DATABASE [ProniaProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProniaProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProniaProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProniaProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProniaProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProniaProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProniaProject] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProniaProject] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProniaProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[IsAdmin] [bit] NULL,
	[Address] [nvarchar](max) NULL,
	[ConnectionId] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[Title] [nvarchar](max) NULL,
	[Title2] [nvarchar](max) NULL,
	[CollectionName] [nvarchar](max) NULL,
	[BtnText] [nvarchar](50) NULL,
	[BtnUrl] [nvarchar](250) NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlantId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitCostPrice] [money] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[FullName] [nvarchar](20) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](200) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantComments]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[PlantId] [int] NOT NULL,
	[Text] [nvarchar](500) NOT NULL,
	[Rate] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PlantComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantImages]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlantId] [int] NOT NULL,
	[ImageName] [nvarchar](max) NULL,
	[PosterStatus] [bit] NULL,
 CONSTRAINT [PK_PlantImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plants]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategorieId] [int] NOT NULL,
	[Desc] [nvarchar](500) NULL,
	[SalePrice] [money] NOT NULL,
	[CostPrice] [money] NOT NULL,
	[Bestseller] [bit] NOT NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsNew] [bit] NOT NULL,
 CONSTRAINT [PK_Plants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantTags]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantTags](
	[PlantId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_PlantTags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC,
	[PlantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Key] [nvarchar](25) NOT NULL,
	[Value] [nvarchar](250) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order] [int] NOT NULL,
	[Offer] [nvarchar](20) NULL,
	[Title] [nvarchar](20) NULL,
	[Desc] [nvarchar](250) NULL,
	[BtnText] [nvarchar](50) NULL,
	[BtnUrl] [nvarchar](250) NULL,
	[ImageName] [nvarchar](100) NULL,
	[BgImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 7/3/2023 10:34:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230602200220_PlantTableCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230602210633_NewTablesCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230605153208_RemoveDiscountColumn', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230606150817_SettingTableCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230606151347_SettingTableAdded', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230606153501_PlantTableChanged', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230606161619_AddBgImageInSLiderColumn', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230606211333_ImageTableCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230607144413_BannerTableCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230608182612_UserTablesCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230609110756_BasketItemAdded', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230609212905_OrderTableCreated', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230611194949_PlantCommentAdded', N'6.0.16')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'02a24e8a-020f-4013-bf34-f8766b05b4d5', N'SuperAdmin', N'SUPERADMIN', N'cf1769c1-3abc-4427-964c-ac11910a14b6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2ea26c51-eef2-4ef0-9c3a-5a97928f4848', N'Member', N'MEMBER', N'b5fcc644-b33f-4f33-bd39-3f1ab96e8e83')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'62d10c0e-527f-46cc-b218-6d46ebc7d7cf', N'Admin', N'ADMIN', N'054eaee6-9a3b-4bc5-adf7-41084af39024')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e03d0dbc-66ff-40d2-8a29-efa20df00058', N'02a24e8a-020f-4013-bf34-f8766b05b4d5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7cca8055-47c3-47d2-b7e1-97f0ff85aead', N'2ea26c51-eef2-4ef0-9c3a-5a97928f4848')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8befdf98-1960-44fc-be04-07fcd2b5c921', N'2ea26c51-eef2-4ef0-9c3a-5a97928f4848')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9ec18354-a8be-4a20-b0e4-005474c92258', N'2ea26c51-eef2-4ef0-9c3a-5a97928f4848')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae48ee89-c1b9-4993-b636-1f5d5c6a0d7d', N'2ea26c51-eef2-4ef0-9c3a-5a97928f4848')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5a3400b-4a82-4e0a-94aa-1ff866550f26', N'62d10c0e-527f-46cc-b218-6d46ebc7d7cf')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [Address], [ConnectionId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Phone]) VALUES (N'7cca8055-47c3-47d2-b7e1-97f0ff85aead', N'AppUser', N'Muhammed Quluzade', 0, NULL, NULL, N'Muha', N'MUHA', N'isnothing003@gmail.com', N'ISNOTHING003@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJzYzzAbl+iFjda7qzqHbOXQ+HH7HGaLkiaCDWJFpVWrn2CSmljVgUwaIw5YivFdvw==', N'UCP6AK6XWTXITQG2M4L3KGP5JJRDLWXU', N'c23c4902-e7ef-4afa-a358-6e3761119b66', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [Address], [ConnectionId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Phone]) VALUES (N'8befdf98-1960-44fc-be04-07fcd2b5c921', N'AppUser', N'Elmeddin Mirzeyev', 0, N'Sumqayit', NULL, N'elmeddin', N'ELMEDDIN', N'elmeddin.mirzeyev1996@gmail.com', N'ELMEDDIN.MIRZEYEV1996@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDijDVSu++ZM6lFzaEd7Aq6nCqT6TQZaQA1eZC31EJeMVRWQWkdHPXL7X2pCpbIU7A==', N'D3IUEB7WXWSJIWSVM3EEHE7OJBRA5A5N', N'161e9164-019c-49c7-a6b7-92081d4ef237', NULL, 0, 0, NULL, 1, 0, N'+994555555555')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [Address], [ConnectionId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Phone]) VALUES (N'9ec18354-a8be-4a20-b0e4-005474c92258', N'AppUser', N'Chingiz Abdullayevv', 0, NULL, NULL, N'cingiz', N'CINGIZ', N'elmaddinshm@code.edu.az', N'ELMADDINSHM@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAELNWMu6Nmnu5rjwqsiJ1PXTWg4RYRoHYhhpokd4KsnNfsXBYO/RjyTInaSTek8oeQA==', N'CQY2W3JTRJO5MWIUIU7KPOROVBKAKMW6', N'1afff999-a4f0-4e06-b107-aad9804f257b', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [Address], [ConnectionId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Phone]) VALUES (N'ae48ee89-c1b9-4993-b636-1f5d5c6a0d7d', N'AppUser', N'Murad Memmedov', 0, NULL, NULL, N'murad', N'MURAD', N'testtesttestt077@gmail.com', N'TESTTESTTESTT077@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIIRm+cH1vb7oQUcM3qVz87JBmVFHzbGSO+pDBbjn+UzDk2rBdh+G+BJyAVcqBssKg==', N'Z7CAIOMH5P5X7LUHIK6CDNQNITMRJCZK', N'2edc1528-d66c-423f-9b99-51f88d9d8031', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [Address], [ConnectionId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Phone]) VALUES (N'e03d0dbc-66ff-40d2-8a29-efa20df00058', N'AppUser', NULL, 1, NULL, NULL, N'admin', N'ADMIN', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOYmHvIWuBDWlZAZXFTJWsSn0fhGCa5Q953PaZUTulsVe4IPUgM6ggCQlrl+UeZIqg==', N'YVXTITHLZ547OJEUGUE2MIRMMP5LWUD3', N'ec3f578f-34c8-4a45-861a-3c9f36dbf265', NULL, 0, 0, NULL, 1, 0, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FullName], [IsAdmin], [Address], [ConnectionId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Phone]) VALUES (N'e5a3400b-4a82-4e0a-94aa-1ff866550f26', N'AppUser', NULL, 1, NULL, NULL, N'admin2', N'ADMIN2', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFqSvHeVgV+TcfVtr4vw9zdohhoDQe3hEWgLz5ConawO7gaN9bv2XgsoOgibdTevcg==', N'22XABCCPQ5XJHQK6VMGEKFVIKQXEHTM6', N'462380c1-854e-4f7a-a46b-f5d515d7a04c', NULL, 0, 0, NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [ImageName], [Title], [Title2], [CollectionName], [BtnText], [BtnUrl]) VALUES (1, N'c9190875-c20a-409e-a022-0b20ac1a104d1-1-770x300.jpg', N'Pottery Pots &', N'PPPPlant', N'Collection Of Cactus', N'Click Me', N'/index')
INSERT [dbo].[Banners] ([Id], [ImageName], [Title], [Title2], [CollectionName], [BtnText], [BtnUrl]) VALUES (2, N'a986765b-2227-4146-8af5-c0ef622ac75a1-2-370x300.jpg', N'Plant Port', NULL, N'New Collection', N'Click Me', N'/index')
INSERT [dbo].[Banners] ([Id], [ImageName], [Title], [Title2], [CollectionName], [BtnText], [BtnUrl]) VALUES (3, N'3279db23-9cde-4977-9954-1402677ada571-3-370x300.jpg', N'Plant Port', NULL, N'New Collection', N'Click Me', N'/index')
INSERT [dbo].[Banners] ([Id], [ImageName], [Title], [Title2], [CollectionName], [BtnText], [BtnUrl]) VALUES (4, N'3cc8b83e-9984-4db6-998c-60c96f1e3ebf1-4-770x300.jpg', N'Hanging Pots &', N'Plant', N'Collection Of Cactus', N'Click Me', N'/index')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N' Bansai')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N' House Plants')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N' Indoor Living')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N' Perennnials')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N' Plant For Gift')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N' Garden Tools ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Illegal Plants')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (1, 1, 5, 3, 87.0000, 56.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (2, 1, 2, 2, 100.0000, 80.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (3, 1, 12, 1, 34.0000, 23.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (4, 1, 11, 1, 23.0000, 12.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (5, 2, 11, 2, 23.0000, 12.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (6, 2, 2, 1, 100.0000, 80.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (7, 2, 5, 1, 87.0000, 56.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (8, 2, 12, 1, 34.0000, 23.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (9, 3, 2, 1, 100.0000, 80.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (10, 3, 5, 2, 87.0000, 56.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (11, 3, 11, 1, 23.0000, 12.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (12, 4, 2, 1, 100.0000, 80.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (13, 4, 4, 1, 54.0000, 45.0000)
INSERT [dbo].[OrderItems] ([Id], [OrderId], [PlantId], [Count], [UnitPrice], [UnitCostPrice]) VALUES (14, 4, 5, 1, 87.0000, 56.0000)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Phone], [Address], [Email], [Note], [CreatedAt], [Status]) VALUES (1, N'8befdf98-1960-44fc-be04-07fcd2b5c921', N'Elmeddin Mirzeyev', N'+994555555555', N'Sumqayit', N'elmeddin.mirzeyev1996@gmail.com', NULL, CAST(N'2023-06-11T00:13:54.0727482' AS DateTime2), 2)
INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Phone], [Address], [Email], [Note], [CreatedAt], [Status]) VALUES (2, N'8befdf98-1960-44fc-be04-07fcd2b5c921', N'Elmeddin Mirzeyev', NULL, NULL, N'elmeddin.mirzeyev1996@gmail.com', NULL, CAST(N'2023-06-11T01:06:17.7770446' AS DateTime2), 3)
INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Phone], [Address], [Email], [Note], [CreatedAt], [Status]) VALUES (3, N'8befdf98-1960-44fc-be04-07fcd2b5c921', N'Elmeddin Mirzeyev', N'+994555555555', N'Sumqayit', N'elmeddin.mirzeyev1996@gmail.com', NULL, CAST(N'2023-06-12T00:07:17.5403006' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [AppUserId], [FullName], [Phone], [Address], [Email], [Note], [CreatedAt], [Status]) VALUES (4, NULL, N'Chingiz Abdullayevv', N'+994555555555', N'Sumqayit', N'elmaddinshm@code.edu.az', NULL, CAST(N'2023-06-12T01:44:25.4494757' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PlantComments] ON 

INSERT [dbo].[PlantComments] ([Id], [AppUserId], [PlantId], [Text], [Rate], [CreatedAt]) VALUES (1, N'8befdf98-1960-44fc-be04-07fcd2b5c921', 2, N'it is baddddddd
', 5, CAST(N'2023-06-11T23:51:04.2666287' AS DateTime2))
SET IDENTITY_INSERT [dbo].[PlantComments] OFF
GO
SET IDENTITY_INSERT [dbo].[PlantImages] ON 

INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (4, 2, N'a3d38856-5400-4586-b929-4a57645facecdownload.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (5, 2, N'738ddbd0-d7e4-4004-9667-ca6ae2c5dfd6download (2).jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (6, 2, N'5bcfb61f-4da8-4c3e-8faa-9538287004dadownload (1).jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (10, 4, N'5516845e-ed00-468c-943d-44455e0aa9611-3-370x300.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (11, 4, N'd9571759-0c91-49a1-a543-13c3cf9828a31-3-270x300.jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (12, 4, N'b47ba569-a310-432f-9c37-dea04c5a90231-1-270x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (13, 5, N'06cb6c49-fb3d-45f3-ab5a-11c2dd4a8b6c1-2-370x300.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (14, 5, N'c46f3de3-b937-480a-81cf-19ba756deef71-3-370x300.jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (15, 5, N'bb528e2e-9691-43f0-990d-8c212dc54af41-1-270x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (16, 5, N'54a77945-80df-48f1-8e91-ccfdeaf21b601-2-270x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (17, 5, N'1fc6817d-264f-4d1d-ab51-266dd0e113781-2-370x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (18, 6, N'5b9a1246-4c8e-4dfe-9efd-d5ba48186f421-3-570x633.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (19, 6, N'd509f678-4048-4458-b86c-c5daa1f807211-6-270x300.jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (20, 6, N'5109ae76-5891-4153-9c67-56833faf08191-4-570x633.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (21, 6, N'75307824-f753-44c3-b1fe-b49c7a4b01921-8-270x300 - Copy.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (23, 7, N'952f266d-2b41-40a2-a4fe-3d5748caf8911-1-570x633.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (24, 7, N'0d7b4719-9373-49b0-aa53-ef803c818ba51-3-370x300.jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (25, 7, N'9452e452-24e4-4726-9e19-ef4e5dbf79a91-3-570x633.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (27, 7, N'68b0e377-d350-4f57-ba52-c7f993b6be401-4-570x633.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (37, 11, N'6d68a82e-ab28-45f4-a1ef-d50e2be96f9c1-5-270x300.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (38, 11, N'e820ea67-016a-4af8-a827-d91e9d9f7bab1-10-270x300.jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (39, 11, N'1e284885-4eb6-4d42-941c-7bdfe132aea41-6-270x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (40, 11, N'1e5fd01a-ea0c-48c4-880b-16545e22fff91-7-270x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (41, 11, N'bd23df67-25dc-4e89-9d29-1459b43f006a1-8-270x300 - Copy.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (42, 11, N'cf03fec0-ee1f-4f8a-84c0-cf1e0850c2881-9-270x300 - Copy.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (43, 12, N'2c1f1a60-2c01-416a-a6f4-93cd7c3ec14c1-7-270x300.jpg', 1)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (44, 12, N'43cd93b9-bfa8-4cae-a748-ce7c53531be01-4-570x633.jpg', 0)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (45, 12, N'6c877906-9613-4fb1-a836-6b44375b5f231-4-270x300.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (46, 12, N'8a532562-1fd4-43b7-9ec3-5ee4dd2990ff1-4-570x633.jpg', NULL)
INSERT [dbo].[PlantImages] ([Id], [PlantId], [ImageName], [PosterStatus]) VALUES (47, 12, N'821b9841-ee24-4c99-9879-753dca1b72ad1-6-270x300.jpg', NULL)
SET IDENTITY_INSERT [dbo].[PlantImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Plants] ON 

INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (2, N'Çətənə', 7, N'do not use at home', 100.0000, 80.0000, 1, 0, 0)
INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (4, N'Black Eyed Susan', 1, N'Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate', 54.0000, 45.0000, 0, 1, 1)
INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (5, N'Bleedin Heart', 1, N'Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate', 87.0000, 56.0000, 1, 1, 0)
INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (6, N'Common Yarrow', 1, N'Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate', 23.4500, 42.0000, 0, 1, 0)
INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (7, N'American Marigold', 1, N'American Marigold
$23.45
( 1 Review )
Color
Size
Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate', 45.0000, 26.0000, 0, 1, 1)
INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (11, N'Doublefile Viburnum', 5, N'loremloremloremloremloremloremloreml oremloremloremloremlore mloremloremloremloremloremloremlor emloremloremloremlore mloremloremloremloremloremlo remlore mloremloremloremlorem loremloremloremlorem', 23.0000, 12.0000, 1, 1, 1)
INSERT [dbo].[Plants] ([Id], [Name], [CategorieId], [Desc], [SalePrice], [CostPrice], [Bestseller], [IsFeatured], [IsNew]) VALUES (12, N'Common Yarrow', 4, N'Lorem ipsum dolor sit amet, consectetur adipisic elit, sed do eiusmod tempo incid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate', 34.0000, 23.0000, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Plants] OFF
GO
INSERT [dbo].[PlantTags] ([PlantId], [TagId]) VALUES (2, 2)
INSERT [dbo].[PlantTags] ([PlantId], [TagId]) VALUES (2, 3)
INSERT [dbo].[PlantTags] ([PlantId], [TagId]) VALUES (11, 3)
INSERT [dbo].[PlantTags] ([PlantId], [TagId]) VALUES (11, 4)
INSERT [dbo].[PlantTags] ([PlantId], [TagId]) VALUES (12, 1)
INSERT [dbo].[PlantTags] ([PlantId], [TagId]) VALUES (12, 5)
GO
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Dribbble', N'https://dribbble.com/')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'FooterLogo', N'dark.png')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'FooterNumber', N'+994559168396')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'HeaderLogo', N'dark.png')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'HeaderNumber', N'+994505481996')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Pinterest', N'https://www.pinterest.com/')
INSERT [dbo].[Settings] ([Key], [Value]) VALUES (N'Twitter', N'https://twitter.com/')
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Order], [Offer], [Title], [Desc], [BtnText], [BtnUrl], [ImageName], [BgImageName]) VALUES (7, 1, N'65% Off', N'New Plant', N'Pronia, With 100% Natural, Organic & Plant Shop.', N'Discover Now', N'/shop', N'b17f17cc-b86f-4606-aabd-cbc0f7f753901-1-524x617.png', N'1581f7ac-0677-4d96-b6ea-79d1476142ea1-1.jpg')
INSERT [dbo].[Sliders] ([Id], [Order], [Offer], [Title], [Desc], [BtnText], [BtnUrl], [ImageName], [BgImageName]) VALUES (8, 2, N'69% Off', N'Old Plant', N'Pronia, With 100% Natural, Organic & Plant Shop.', N'Discover Now', N'/shop', N'59428de8-34da-4807-b8a6-a85c8a76325f1-2-524x617.png', N'0b0954e1-f361-415c-a62d-d32d700d13f72-1.jpg')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'Fashion')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'Organic')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'Old Fashion')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'Always Green')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'Office')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'Home')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BasketItems_AppUserId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_AppUserId] ON [dbo].[BasketItems]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BasketItems_PlantId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_BasketItems_PlantId] ON [dbo].[BasketItems]
(
	[PlantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_PlantId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_PlantId] ON [dbo].[OrderItems]
(
	[PlantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_AppUserId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserId] ON [dbo].[Orders]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PlantComments_AppUserId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_PlantComments_AppUserId] ON [dbo].[PlantComments]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlantComments_PlantId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_PlantComments_PlantId] ON [dbo].[PlantComments]
(
	[PlantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlantImages_PlantId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_PlantImages_PlantId] ON [dbo].[PlantImages]
(
	[PlantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Plants_CategorieId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Plants_CategorieId] ON [dbo].[Plants]
(
	[CategorieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlantTags_PlantId]    Script Date: 7/3/2023 10:34:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_PlantTags_PlantId] ON [dbo].[PlantTags]
(
	[PlantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Plants_PlantId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Plants_PlantId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[PlantComments]  WITH CHECK ADD  CONSTRAINT [FK_PlantComments_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PlantComments] CHECK CONSTRAINT [FK_PlantComments_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[PlantComments]  WITH CHECK ADD  CONSTRAINT [FK_PlantComments_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantComments] CHECK CONSTRAINT [FK_PlantComments_Plants_PlantId]
GO
ALTER TABLE [dbo].[PlantImages]  WITH CHECK ADD  CONSTRAINT [FK_PlantImages_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantImages] CHECK CONSTRAINT [FK_PlantImages_Plants_PlantId]
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD  CONSTRAINT [FK_Plants_Categories_CategorieId] FOREIGN KEY([CategorieId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Plants] CHECK CONSTRAINT [FK_Plants_Categories_CategorieId]
GO
ALTER TABLE [dbo].[PlantTags]  WITH CHECK ADD  CONSTRAINT [FK_PlantTags_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantTags] CHECK CONSTRAINT [FK_PlantTags_Plants_PlantId]
GO
ALTER TABLE [dbo].[PlantTags]  WITH CHECK ADD  CONSTRAINT [FK_PlantTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantTags] CHECK CONSTRAINT [FK_PlantTags_Tags_TagId]
GO
USE [master]
GO
ALTER DATABASE [ProniaProject] SET  READ_WRITE 
GO
