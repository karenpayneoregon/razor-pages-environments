USE [master]
GO
/****** Object:  Database [OED.Pizza]    Script Date: 10/11/2022 3:55:49 AM ******/
CREATE DATABASE [OED.Pizza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OED.Pizza', FILENAME = N'C:\Users\paynek\OED.Pizza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OED.Pizza_log', FILENAME = N'C:\Users\paynek\OED.Pizza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OED.Pizza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OED.Pizza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OED.Pizza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OED.Pizza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OED.Pizza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OED.Pizza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OED.Pizza] SET ARITHABORT OFF 
GO
ALTER DATABASE [OED.Pizza] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OED.Pizza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OED.Pizza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OED.Pizza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OED.Pizza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OED.Pizza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OED.Pizza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OED.Pizza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OED.Pizza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OED.Pizza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OED.Pizza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OED.Pizza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OED.Pizza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OED.Pizza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OED.Pizza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OED.Pizza] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [OED.Pizza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OED.Pizza] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OED.Pizza] SET  MULTI_USER 
GO
ALTER DATABASE [OED.Pizza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OED.Pizza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OED.Pizza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OED.Pizza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OED.Pizza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OED.Pizza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OED.Pizza] SET QUERY_STORE = OFF
GO
USE [OED.Pizza]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/11/2022 3:55:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/11/2022 3:55:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/11/2022 3:55:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderPlaced] [datetime2](7) NOT NULL,
	[OrderFulfilled] [datetime2](7) NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/11/2022 3:55:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (1, N'Jane', N'Smith', N'123 Maple Ave', N'444-555-5555', N'smith@star.com')
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Address], [Phone], [Email]) VALUES (2, N'Mike', N'Jones', N'967 Ne South Street', N'354-535-5353', N'jones@yahoo.com')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId]) VALUES (1, 2, 2, 1)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId]) VALUES (2, 1, 4, 2)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [ProductId], [OrderId]) VALUES (3, 1, 6, 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (1, CAST(N'2022-09-24T13:30:00.0000000' AS DateTime2), CAST(N'2022-09-24T16:16:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Orders] ([Id], [OrderPlaced], [OrderFulfilled], [CustomerId]) VALUES (2, CAST(N'2022-09-24T18:30:00.0000000' AS DateTime2), CAST(N'2022-09-22T18:22:00.0000000' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (1, N'Veggie Pizza (small)', CAST(5.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (2, N'Veggie Pizza (medium)', CAST(8.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (3, N'Veggie Pizza (large)', CAST(10.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (4, N'Pepperoni Pizza (small)', CAST(7.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (5, N'Pepperoni Pizza (medium)', CAST(9.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (6, N'Pepperoni Pizza (large)', CAST(10.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (7, N'Margherita Pizza (small)', CAST(8.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (8, N'Margherita Pizza (medium)', CAST(10.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (9, N'Margherita Pizza (large)', CAST(12.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (10, N'BBQ Chicken Pizza (small)', CAST(12.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (11, N'BBQ Chicken Pizza (medium)', CAST(14.00 AS Decimal(6, 2)))
INSERT [dbo].[Products] ([Id], [Name], [Price]) VALUES (12, N'BBQ Chicken Pizza (large)', CAST(16.00 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 10/11/2022 3:55:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 10/11/2022 3:55:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CustomerId]    Script Date: 10/11/2022 3:55:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerId] ON [dbo].[Orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerId]
GO
USE [master]
GO
ALTER DATABASE [OED.Pizza] SET  READ_WRITE 
GO
