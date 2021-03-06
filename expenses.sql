/****** Object:  ForeignKey [FK_tbl_expenses_users_RegisteredUsers]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_expenses_users_RegisteredUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]'))
ALTER TABLE [dbo].[tbl_expenses_users] DROP CONSTRAINT [FK_tbl_expenses_users_RegisteredUsers]
GO
/****** Object:  ForeignKey [FK_tbl_expenses_users_tbl_expensesDesc]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_expenses_users_tbl_expensesDesc]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]'))
ALTER TABLE [dbo].[tbl_expenses_users] DROP CONSTRAINT [FK_tbl_expenses_users_tbl_expensesDesc]
GO
/****** Object:  ForeignKey [FK_tbl_RecordsSpent_tbl_expenses_users]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_RecordsSpent_tbl_expenses_users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_RecordsSpent]'))
ALTER TABLE [dbo].[tbl_RecordsSpent] DROP CONSTRAINT [FK_tbl_RecordsSpent_tbl_expenses_users]
GO
/****** Object:  View [dbo].[View10]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View10]'))
DROP VIEW [dbo].[View10]
GO
/****** Object:  View [dbo].[View5]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View5]'))
DROP VIEW [dbo].[View5]
GO
/****** Object:  View [dbo].[View7]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View7]'))
DROP VIEW [dbo].[View7]
GO
/****** Object:  View [dbo].[View8]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View8]'))
DROP VIEW [dbo].[View8]
GO
/****** Object:  View [dbo].[View9]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View9]'))
DROP VIEW [dbo].[View9]
GO
/****** Object:  View [dbo].[View6]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View6]'))
DROP VIEW [dbo].[View6]
GO
/****** Object:  View [dbo].[View3]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View3]'))
DROP VIEW [dbo].[View3]
GO
/****** Object:  View [dbo].[View4]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View4]'))
DROP VIEW [dbo].[View4]
GO
/****** Object:  Table [dbo].[tbl_RecordsSpent]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_RecordsSpent]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_RecordsSpent]
GO
/****** Object:  View [dbo].[View1]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
DROP VIEW [dbo].[View1]
GO
/****** Object:  View [dbo].[View2]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View2]'))
DROP VIEW [dbo].[View2]
GO
/****** Object:  Table [dbo].[tbl_expenses_users]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_expenses_users]
GO
/****** Object:  Table [dbo].[tbl_expensesDesc]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_expensesDesc]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_expensesDesc]
GO
/****** Object:  Table [dbo].[RegisteredUsers]    Script Date: 04/27/2012 07:17:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegisteredUsers]') AND type in (N'U'))
DROP TABLE [dbo].[RegisteredUsers]
GO
/****** Object:  Table [dbo].[RegisteredUsers]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegisteredUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegisteredUsers](
	[registereduserID] [bigint] IDENTITY(1,1) NOT NULL,
	[userlastname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userfirstname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[usermiddlename] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[useremailaddress] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[username] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userpassword] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_RegisteredUsers] PRIMARY KEY CLUSTERED 
(
	[registereduserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[RegisteredUsers] ON
INSERT [dbo].[RegisteredUsers] ([registereduserID], [userlastname], [userfirstname], [usermiddlename], [useremailaddress], [username], [userpassword]) VALUES (6, N'Duldulao', N'Jake', N'Velasco', N'duldulaojakes@gmail.com', N'duldulao', N'lai.com')
INSERT [dbo].[RegisteredUsers] ([registereduserID], [userlastname], [userfirstname], [usermiddlename], [useremailaddress], [username], [userpassword]) VALUES (7, N'Dumpit', N'Lordielyn', N'Abergas', N'dumpit@yahoo.com', N'lordy', N'lai.com')
SET IDENTITY_INSERT [dbo].[RegisteredUsers] OFF
/****** Object:  Table [dbo].[tbl_expensesDesc]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_expensesDesc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_expensesDesc](
	[expensesID] [bigint] IDENTITY(1,1) NOT NULL,
	[expensesdescription] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_expensesDesc] PRIMARY KEY CLUSTERED 
(
	[expensesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_expensesDesc] ON
INSERT [dbo].[tbl_expensesDesc] ([expensesID], [expensesdescription]) VALUES (43, N'Party')
INSERT [dbo].[tbl_expensesDesc] ([expensesID], [expensesdescription]) VALUES (44, N'Foodcon')
INSERT [dbo].[tbl_expensesDesc] ([expensesID], [expensesdescription]) VALUES (45, N'Party-Party')
INSERT [dbo].[tbl_expensesDesc] ([expensesID], [expensesdescription]) VALUES (46, N'Food-Foodsz')
INSERT [dbo].[tbl_expensesDesc] ([expensesID], [expensesdescription]) VALUES (47, N'Celphone-Load')
SET IDENTITY_INSERT [dbo].[tbl_expensesDesc] OFF
/****** Object:  Table [dbo].[tbl_expenses_users]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_expenses_users](
	[usersexpensesID] [bigint] IDENTITY(1,1) NOT NULL,
	[registereduserID] [bigint] NOT NULL,
	[expensesID] [bigint] NOT NULL,
 CONSTRAINT [PK_tbl_expenses_users] PRIMARY KEY CLUSTERED 
(
	[usersexpensesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_expenses_users] ON
INSERT [dbo].[tbl_expenses_users] ([usersexpensesID], [registereduserID], [expensesID]) VALUES (50, 6, 43)
INSERT [dbo].[tbl_expenses_users] ([usersexpensesID], [registereduserID], [expensesID]) VALUES (51, 6, 44)
INSERT [dbo].[tbl_expenses_users] ([usersexpensesID], [registereduserID], [expensesID]) VALUES (52, 7, 45)
INSERT [dbo].[tbl_expenses_users] ([usersexpensesID], [registereduserID], [expensesID]) VALUES (53, 7, 46)
INSERT [dbo].[tbl_expenses_users] ([usersexpensesID], [registereduserID], [expensesID]) VALUES (54, 7, 47)
SET IDENTITY_INSERT [dbo].[tbl_expenses_users] OFF
/****** Object:  View [dbo].[View2]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View2]
AS
SELECT        TOP (1) expensesID
FROM            dbo.tbl_expensesDesc
ORDER BY expensesID DESC
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_expensesDesc"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 101
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View2'
GO
/****** Object:  View [dbo].[View1]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View1]
AS
SELECT        userlastname, userfirstname, usermiddlename, useremailaddress, username, userpassword
FROM            dbo.RegisteredUsers
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegisteredUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View1'
GO
/****** Object:  Table [dbo].[tbl_RecordsSpent]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_RecordsSpent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_RecordsSpent](
	[recordsAmountID] [bigint] IDENTITY(1,1) NOT NULL,
	[usersexpensesID] [bigint] NOT NULL,
	[amountspent] [money] NOT NULL,
	[dateRecorded] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_RecordsSpent] PRIMARY KEY CLUSTERED 
(
	[recordsAmountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_RecordsSpent] ON
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (36, 51, 500.0000, CAST(0x0000A0400069C1D4 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (37, 51, 600.0000, CAST(0x0000A0400069FEC4 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (38, 51, 700.0000, CAST(0x0000A040006A1058 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (39, 54, 600.0000, CAST(0x0000A040006B8F8C AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (40, 54, 500.0000, CAST(0x0000A040006BCC7C AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (41, 54, 400.0000, CAST(0x0000A040006BDCE4 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (42, 54, 300.0000, CAST(0x0000A040006BEAF4 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (43, 54, 200.0000, CAST(0x0000A040006BF454 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (44, 54, 100.0000, CAST(0x0000A040006BFB5C AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (45, 54, 50.0000, CAST(0x0000A040006C0A98 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (46, 53, 100.0000, CAST(0x0000A040006D2630 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (48, 52, 200.0000, CAST(0x0000A040006D5510 AS DateTime))
INSERT [dbo].[tbl_RecordsSpent] ([recordsAmountID], [usersexpensesID], [amountspent], [dateRecorded]) VALUES (49, 52, 200.0000, CAST(0x0000A040006D59C0 AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_RecordsSpent] OFF
/****** Object:  View [dbo].[View4]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View4]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View4]
AS
SELECT        dbo.tbl_expensesDesc.expensesdescription
FROM            dbo.RegisteredUsers INNER JOIN
                         dbo.tbl_expenses_users ON dbo.RegisteredUsers.registereduserID = dbo.tbl_expenses_users.registereduserID INNER JOIN
                         dbo.tbl_expensesDesc ON dbo.tbl_expenses_users.expensesID = dbo.tbl_expensesDesc.expensesID
WHERE        (dbo.tbl_expenses_users.usersexpensesID = 20)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegisteredUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expensesDesc"
            Begin Extent = 
               Top = 6
               Left = 468
               Bottom = 101
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 118
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View4'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View4'
GO
/****** Object:  View [dbo].[View3]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View3]
AS
SELECT        TOP (100) PERCENT dbo.tbl_expenses_users.usersexpensesID, dbo.tbl_expenses_users.registereduserID, dbo.tbl_expenses_users.expensesID, 
                         dbo.tbl_expensesDesc.expensesdescription
FROM            dbo.RegisteredUsers INNER JOIN
                         dbo.tbl_expenses_users ON dbo.RegisteredUsers.registereduserID = dbo.tbl_expenses_users.registereduserID INNER JOIN
                         dbo.tbl_expensesDesc ON dbo.tbl_expenses_users.expensesID = dbo.tbl_expensesDesc.expensesID
WHERE        (dbo.RegisteredUsers.registereduserID = 1)
ORDER BY dbo.tbl_expensesDesc.expensesdescription
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[3] 2[36] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegisteredUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expensesDesc"
            Begin Extent = 
               Top = 6
               Left = 468
               Bottom = 101
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 118
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View3'
GO
/****** Object:  View [dbo].[View6]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View6]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View6]
AS
SELECT        dbo.RegisteredUsers.registereduserID, dbo.tbl_expensesDesc.expensesdescription
FROM            dbo.RegisteredUsers INNER JOIN
                         dbo.tbl_expenses_users ON dbo.RegisteredUsers.registereduserID = dbo.tbl_expenses_users.registereduserID INNER JOIN
                         dbo.tbl_expensesDesc ON dbo.tbl_expenses_users.expensesID = dbo.tbl_expensesDesc.expensesID
WHERE        (dbo.RegisteredUsers.registereduserID = 1) AND (dbo.tbl_expensesDesc.expensesdescription = ''foods'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View6', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegisteredUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 118
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expensesDesc"
            Begin Extent = 
               Top = 6
               Left = 468
               Bottom = 101
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View6'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View6', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View6'
GO
/****** Object:  View [dbo].[View9]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View9]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View9]
AS
SELECT        SUM(dbo.tbl_RecordsSpent.amountspent) AS Expr1, dbo.tbl_expenses_users.expensesID
FROM            dbo.tbl_expenses_users INNER JOIN
                         dbo.tbl_RecordsSpent ON dbo.tbl_expenses_users.usersexpensesID = dbo.tbl_RecordsSpent.usersexpensesID
WHERE        (dbo.tbl_RecordsSpent.dateRecorded BETWEEN ''4/26/2012 12:00:00 AM'' AND ''4/26/2012 11:59:59 PM'') AND (dbo.tbl_expenses_users.expensesID = 41)
GROUP BY dbo.tbl_expenses_users.expensesID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View9', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[19] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 118
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_RecordsSpent"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 135
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2550
         Width = 1815
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View9'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View9', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View9'
GO
/****** Object:  View [dbo].[View8]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View8]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View8]
AS
SELECT        TOP (100) PERCENT dbo.tbl_RecordsSpent.amountspent, dbo.tbl_RecordsSpent.dateRecorded
FROM            dbo.RegisteredUsers INNER JOIN
                         dbo.tbl_expenses_users ON dbo.RegisteredUsers.registereduserID = dbo.tbl_expenses_users.registereduserID INNER JOIN
                         dbo.tbl_expensesDesc ON dbo.tbl_expenses_users.expensesID = dbo.tbl_expensesDesc.expensesID INNER JOIN
                         dbo.tbl_RecordsSpent ON dbo.tbl_expenses_users.usersexpensesID = dbo.tbl_RecordsSpent.usersexpensesID
WHERE        (dbo.tbl_expenses_users.expensesID = 41)
ORDER BY dbo.tbl_RecordsSpent.dateRecorded DESC
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View8', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegisteredUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 187
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expensesDesc"
            Begin Extent = 
               Top = 6
               Left = 468
               Bottom = 101
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 118
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_RecordsSpent"
            Begin Extent = 
               Top = 6
               Left = 701
               Bottom = 135
               Right = 884
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2595
         Width = 2580
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View8'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View8', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View8'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View8', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View8'
GO
/****** Object:  View [dbo].[View7]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View7]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View7]
AS
SELECT        TOP (100) PERCENT SUM(dbo.tbl_RecordsSpent.amountspent) AS OverallAmount, dbo.tbl_expensesDesc.expensesdescription, 
                         dbo.tbl_expenses_users.registereduserID, dbo.tbl_expenses_users.usersexpensesID, dbo.tbl_expenses_users.expensesID
FROM            dbo.RegisteredUsers INNER JOIN
                         dbo.tbl_expenses_users ON dbo.RegisteredUsers.registereduserID = dbo.tbl_expenses_users.registereduserID INNER JOIN
                         dbo.tbl_expensesDesc ON dbo.tbl_expenses_users.expensesID = dbo.tbl_expensesDesc.expensesID INNER JOIN
                         dbo.tbl_RecordsSpent ON dbo.tbl_expenses_users.usersexpensesID = dbo.tbl_RecordsSpent.usersexpensesID
WHERE        (dbo.RegisteredUsers.registereduserID = 1)
GROUP BY dbo.tbl_expensesDesc.expensesdescription, dbo.tbl_expenses_users.registereduserID, dbo.tbl_expenses_users.usersexpensesID, 
                         dbo.tbl_expenses_users.expensesID
ORDER BY dbo.tbl_expensesDesc.expensesdescription
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View7', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[5] 2[30] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RegisteredUsers"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 118
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expensesDesc"
            Begin Extent = 
               Top = 6
               Left = 468
               Bottom = 101
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_RecordsSpent"
            Begin Extent = 
               Top = 102
               Left = 468
               Bottom = 231
               Right = 651
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2220
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View7'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View7', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View7'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View7', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View7'
GO
/****** Object:  View [dbo].[View5]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View5]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View5]
AS
SELECT        TOP (100) PERCENT recordsAmountID, usersexpensesID, amountspent, dateRecorded
FROM            dbo.tbl_RecordsSpent
ORDER BY dateRecorded DESC
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View5', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_RecordsSpent"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View5'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View5', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View5'
GO
/****** Object:  View [dbo].[View10]    Script Date: 04/27/2012 07:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View10]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View10]
AS
SELECT        SUM(dbo.tbl_RecordsSpent.amountspent) AS AllAmount, dbo.tbl_expenses_users.expensesID
FROM            dbo.tbl_RecordsSpent INNER JOIN
                         dbo.tbl_expenses_users ON dbo.tbl_RecordsSpent.usersexpensesID = dbo.tbl_expenses_users.usersexpensesID
WHERE        (dbo.tbl_expenses_users.expensesID = 39)
GROUP BY dbo.tbl_expenses_users.expensesID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View10', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[4] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_RecordsSpent"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_expenses_users"
            Begin Extent = 
               Top = 6
               Left = 492
               Bottom = 118
               Right = 666
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View10'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View10', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View10'
GO
/****** Object:  ForeignKey [FK_tbl_expenses_users_RegisteredUsers]    Script Date: 04/27/2012 07:17:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_expenses_users_RegisteredUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]'))
ALTER TABLE [dbo].[tbl_expenses_users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_expenses_users_RegisteredUsers] FOREIGN KEY([registereduserID])
REFERENCES [dbo].[RegisteredUsers] ([registereduserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_expenses_users_RegisteredUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]'))
ALTER TABLE [dbo].[tbl_expenses_users] CHECK CONSTRAINT [FK_tbl_expenses_users_RegisteredUsers]
GO
/****** Object:  ForeignKey [FK_tbl_expenses_users_tbl_expensesDesc]    Script Date: 04/27/2012 07:17:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_expenses_users_tbl_expensesDesc]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]'))
ALTER TABLE [dbo].[tbl_expenses_users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_expenses_users_tbl_expensesDesc] FOREIGN KEY([expensesID])
REFERENCES [dbo].[tbl_expensesDesc] ([expensesID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_expenses_users_tbl_expensesDesc]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_expenses_users]'))
ALTER TABLE [dbo].[tbl_expenses_users] CHECK CONSTRAINT [FK_tbl_expenses_users_tbl_expensesDesc]
GO
/****** Object:  ForeignKey [FK_tbl_RecordsSpent_tbl_expenses_users]    Script Date: 04/27/2012 07:17:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_RecordsSpent_tbl_expenses_users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_RecordsSpent]'))
ALTER TABLE [dbo].[tbl_RecordsSpent]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RecordsSpent_tbl_expenses_users] FOREIGN KEY([usersexpensesID])
REFERENCES [dbo].[tbl_expenses_users] ([usersexpensesID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_RecordsSpent_tbl_expenses_users]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_RecordsSpent]'))
ALTER TABLE [dbo].[tbl_RecordsSpent] CHECK CONSTRAINT [FK_tbl_RecordsSpent_tbl_expenses_users]
GO
