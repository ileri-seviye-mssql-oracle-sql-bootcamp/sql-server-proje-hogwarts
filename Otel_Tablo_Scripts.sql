USE [OTEL]
GO
/****** Object:  Table [dbo].[Customer_Details]    Script Date: 29.12.2020 22:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Details](
	[Transaction_Id] [int] NOT NULL,
	[Customer_ıd] [int] NOT NULL,
	[Service_Id] [int] NOT NULL,
	[Consumed_Id] [int] NOT NULL,
	[Room_Id] [int] IDENTITY(1,1) NOT NULL,
	[Last_Account] [money] NULL,
	[Check_In_Date] [datetime] NOT NULL,
	[Check_Out_Date] [datetime] NOT NULL,
	[Number_Of_Person] [tinyint] NOT NULL,
 CONSTRAINT [PK_Customer_Details] PRIMARY KEY CLUSTERED 
(
	[Transaction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 29.12.2020 22:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Per_Id] [int] IDENTITY(1,1) NOT NULL,
	[Per_Role_Id] [int] NOT NULL,
	[Per_Name] [varchar](50) NULL,
	[Per_Module] [varchar](30) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[Per_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
