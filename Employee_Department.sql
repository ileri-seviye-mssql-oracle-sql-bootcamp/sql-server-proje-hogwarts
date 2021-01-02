USE [HotelManagement]
GO
/****** Object:  Table [dbo].[Employee_Department]    Script Date: 2.01.2021 18:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Department](
	[Emp_Departman_Id] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [int] NULL,
	[Emp_Departman_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Employee_Department] PRIMARY KEY CLUSTERED 
(
	[Emp_Departman_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee_Department] ON 

INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (1, NULL, N'Reception')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (2, NULL, N'Housekeeping')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (3, NULL, N'Catering')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (4, NULL, N'Human Recourses')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (5, NULL, N'Accounting')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (6, NULL, N'IT')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (7, NULL, N'Security')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (8, NULL, N'Sales')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (9, NULL, N'Paramedic Team')
INSERT [dbo].[Employee_Department] ([Emp_Departman_Id], [Employee_Id], [Emp_Departman_Name]) VALUES (10, NULL, N'Technical Service')
SET IDENTITY_INSERT [dbo].[Employee_Department] OFF
GO
ALTER TABLE [dbo].[Employee_Department]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Employee_Id])
GO
ALTER TABLE [dbo].[Employee_Department] CHECK CONSTRAINT [FK_Employee_Department_Employee]
GO
