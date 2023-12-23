USE [northwind-DWH]
GO
/****** Object:  Table [dbo].[DIM Employee]    Script Date: 12/21/2023 4:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM Employee](
	[Employee ID] [int] NOT NULL,
	[First Name] [nvarchar](10) NOT NULL,
	[Last Name] [nvarchar](20) NOT NULL,
	[Titel] [nvarchar](30) NULL,
	[Birth Date] [datetime] NULL,
	[Hire Date] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Postal code] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Home Phone] [nvarchar](24) NULL,
	[EMP TerritoryDescription] [nchar](50) NOT NULL,
	[RegionDescription] [nchar](50) NOT NULL,
 CONSTRAINT [PK_DIM Employee] PRIMARY KEY CLUSTERED 
(
	[Employee ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [FG]
) ON [FG]
GO
/****** Object:  Table [dbo].[DIMCustomers]    Script Date: 12/21/2023 4:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIMCustomers](
	[Customer id] [nchar](5) NOT NULL,
	[company Name] [nvarchar](50) NOT NULL,
	[contact Name] [nvarchar](40) NULL,
	[Contact title] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Postal code] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[Customer Demographics] [ntext] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Customer id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [FG]
) ON [FG] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 12/21/2023 4:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[Date key] [int] IDENTITY(1,1) NOT NULL,
	[Order Date] [datetime] NULL,
	[Required Date] [datetime] NULL,
	[Year] [int] NULL,
	[Quarter] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[Weekday] [int] NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[Date key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [FG]
) ON [FG]
GO
/****** Object:  Table [dbo].[DIMProduct]    Script Date: 12/21/2023 4:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIMProduct](
	[Product ID] [int] NOT NULL,
	[Product Name] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](30) NOT NULL,
	[Unitprice] [money] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [FG]
) ON [FG]
GO
/****** Object:  Table [dbo].[DIMSupplier]    Script Date: 12/21/2023 4:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIMSupplier](
	[Supplier ID] [int] NOT NULL,
	[Company Name] [nvarchar](40) NOT NULL,
	[Contact Name] [nvarchar](30) NULL,
	[Contact Title] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Postal code] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_DIMSupplier] PRIMARY KEY CLUSTERED 
(
	[Supplier ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [FG]
) ON [FG]
GO
/****** Object:  Table [dbo].[F order]    Script Date: 12/21/2023 4:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F order](
	[Order ID] [int] NOT NULL,
	[Customer ID] [nchar](5) NOT NULL,
	[Employee ID] [int] NOT NULL,
	[Supplier ID] [int] NOT NULL,
	[Date key] [int] NOT NULL,
	[Product id] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_F order] PRIMARY KEY CLUSTERED 
(
	[Order ID] ASC,
	[Customer ID] ASC,
	[Employee ID] ASC,
	[Supplier ID] ASC,
	[Date key] ASC,
	[Product id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
