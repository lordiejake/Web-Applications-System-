/****** Object:  ForeignKey [FK_tbl_CategoryFormResults_tbl_Category]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CategoryFormResults_tbl_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]'))
ALTER TABLE [dbo].[tbl_CategoryFormResults] DROP CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Category]
GO
/****** Object:  ForeignKey [FK_tbl_CategoryFormResults_tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CategoryFormResults_tbl_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]'))
ALTER TABLE [dbo].[tbl_CategoryFormResults] DROP CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Student]
GO
/****** Object:  ForeignKey [FK_tbl_CategoryFormResults_tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CategoryFormResults_tbl_Trial]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]'))
ALTER TABLE [dbo].[tbl_CategoryFormResults] DROP CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Trial]
GO
/****** Object:  ForeignKey [FK_tbl_OverAllResultsGeneral_tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_OverAllResultsGeneral_tbl_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_OverAllResultsGeneral]'))
ALTER TABLE [dbo].[tbl_OverAllResultsGeneral] DROP CONSTRAINT [FK_tbl_OverAllResultsGeneral_tbl_Student]
GO
/****** Object:  ForeignKey [FK_tbl_OverAllResultsGeneral_tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_OverAllResultsGeneral_tbl_Trial]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_OverAllResultsGeneral]'))
ALTER TABLE [dbo].[tbl_OverAllResultsGeneral] DROP CONSTRAINT [FK_tbl_OverAllResultsGeneral_tbl_Trial]
GO
/****** Object:  ForeignKey [FK_tbl_ResultsReports_tbl_Category]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_ResultsReports_tbl_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]'))
ALTER TABLE [dbo].[tbl_ResultsReports] DROP CONSTRAINT [FK_tbl_ResultsReports_tbl_Category]
GO
/****** Object:  ForeignKey [FK_tbl_ResultsReports_tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_ResultsReports_tbl_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]'))
ALTER TABLE [dbo].[tbl_ResultsReports] DROP CONSTRAINT [FK_tbl_ResultsReports_tbl_Student]
GO
/****** Object:  ForeignKey [FK_tbl_ResultsReports_tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_ResultsReports_tbl_Trial]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]'))
ALTER TABLE [dbo].[tbl_ResultsReports] DROP CONSTRAINT [FK_tbl_ResultsReports_tbl_Trial]
GO
/****** Object:  View [dbo].[View_4]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
DROP VIEW [dbo].[View_4]
GO
/****** Object:  View [dbo].[View_3]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
DROP VIEW [dbo].[View_3]
GO
/****** Object:  View [dbo].[View1]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
DROP VIEW [dbo].[View1]
GO
/****** Object:  View [dbo].[View_2]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
DROP VIEW [dbo].[View_2]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
DROP VIEW [dbo].[View_1]
GO
/****** Object:  Table [dbo].[tbl_OverAllResultsGeneral]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_OverAllResultsGeneral]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_OverAllResultsGeneral]
GO
/****** Object:  Table [dbo].[tbl_CategoryFormResults]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CategoryFormResults]
GO
/****** Object:  Table [dbo].[tbl_ResultsReports]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ResultsReports]
GO
/****** Object:  Table [dbo].[tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Trial]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Trial]
GO
/****** Object:  Table [dbo].[tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Student]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Student]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 02/04/2012 05:29:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Category]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Category]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON
INSERT [dbo].[tbl_Category] ([CategoryID], [CategoryName]) VALUES (1, N'Colors')
INSERT [dbo].[tbl_Category] ([CategoryID], [CategoryName]) VALUES (2, N'Shapes')
INSERT [dbo].[tbl_Category] ([CategoryID], [CategoryName]) VALUES (3, N'Numbers')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
/****** Object:  Table [dbo].[tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Student]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Student](
	[StudID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MiddleName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Age] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_Student] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Trial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Trial](
	[TrailID] [int] IDENTITY(1,1) NOT NULL,
	[Trial] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_Trial] PRIMARY KEY CLUSTERED 
(
	[TrailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Trial] ON
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (1, N'Trial 1')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (2, N'Trial 2')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (3, N'Trial 3')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (4, N'Trial 4')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (5, N'Trial 5')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (6, N'Trial 6')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (7, N'Trial 7')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (8, N'Trial 8')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (9, N'Trial 9')
INSERT [dbo].[tbl_Trial] ([TrailID], [Trial]) VALUES (10, N'Trial 10')
SET IDENTITY_INSERT [dbo].[tbl_Trial] OFF
/****** Object:  Table [dbo].[tbl_ResultsReports]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_ResultsReports](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[StudID] [int] NOT NULL,
	[TrialID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Items] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BoolStatus] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CategoryScore] [int] NOT NULL,
	[CategoryRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OverAllScore] [int] NOT NULL,
	[OverAllRate] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_ResultsReports] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tbl_CategoryFormResults]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_CategoryFormResults](
	[CategoryFormID] [int] IDENTITY(1,1) NOT NULL,
	[StudID] [int] NOT NULL,
	[TrailID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[CategoryScore] [int] NOT NULL,
	[CategoryRatings] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_CategoryFormResults] PRIMARY KEY CLUSTERED 
(
	[CategoryFormID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tbl_OverAllResultsGeneral]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_OverAllResultsGeneral]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_OverAllResultsGeneral](
	[GeneralScoreID] [int] IDENTITY(1,1) NOT NULL,
	[StudID] [int] NOT NULL,
	[TrialID] [int] NOT NULL,
	[OverAllScore] [int] NOT NULL,
	[OverAllRatings] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_OverAllResultsGeneral] PRIMARY KEY CLUSTERED 
(
	[GeneralScoreID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  View [dbo].[View_1]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.tbl_Student.LastName + ''  '' + dbo.tbl_Student.FirstName + '' '' + dbo.tbl_Student.MiddleName AS Expr1, dbo.tbl_Trial.Trial, dbo.tbl_Category.CategoryName, 
                      dbo.tbl_ResultsReports.Items, dbo.tbl_ResultsReports.Status
FROM         dbo.tbl_ResultsReports INNER JOIN
                      dbo.tbl_Student ON dbo.tbl_ResultsReports.StudID = dbo.tbl_Student.StudID INNER JOIN
                      dbo.tbl_Trial ON dbo.tbl_ResultsReports.TrialID = dbo.tbl_Trial.TrailID INNER JOIN
                      dbo.tbl_Category ON dbo.tbl_ResultsReports.CategoryID = dbo.tbl_Category.CategoryID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[4] 2[19] 3) )"
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
         Begin Table = "tbl_ResultsReports"
            Begin Extent = 
               Top = 37
               Left = 218
               Bottom = 156
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Student"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Trial"
            Begin Extent = 
               Top = 6
               Left = 425
               Bottom = 95
               Right = 585
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 623
               Bottom = 95
               Right = 784
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
         Width = 1950
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1890
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
         Or = 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'50
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  View [dbo].[View_2]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_2]
AS
SELECT     dbo.tbl_Student.LastName, dbo.tbl_Student.FirstName, dbo.tbl_Trial.Trial, dbo.tbl_ResultsReports.Items, dbo.tbl_ResultsReports.Status, 
                      dbo.tbl_Category.CategoryName
FROM         dbo.tbl_ResultsReports INNER JOIN
                      dbo.tbl_Student ON dbo.tbl_ResultsReports.StudID = dbo.tbl_Student.StudID INNER JOIN
                      dbo.tbl_Trial ON dbo.tbl_ResultsReports.TrialID = dbo.tbl_Trial.TrailID INNER JOIN
                      dbo.tbl_Category ON dbo.tbl_ResultsReports.CategoryID = dbo.tbl_Category.CategoryID
WHERE     (dbo.tbl_ResultsReports.CategoryID = 1) AND (dbo.tbl_ResultsReports.StudID = 3) AND (dbo.tbl_ResultsReports.TrialID = 1)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[4] 2[20] 3) )"
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
         Begin Table = "tbl_ResultsReports"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "tbl_Student"
            Begin Extent = 
               Top = 6
               Left = 237
               Bottom = 125
               Right = 397
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Trial"
            Begin Extent = 
               Top = 6
               Left = 435
               Bottom = 95
               Right = 595
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Category"
            Begin Extent = 
               Top = 6
               Left = 633
               Bottom = 95
               Right = 794
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
         Or = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
/****** Object:  View [dbo].[View1]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View1]
AS
SELECT        StudID, TrialID, CategoryID, Items, Status, BoolStatus, CategoryScore, CategoryRate, OverAllScore, OverAllRate
FROM            dbo.tbl_ResultsReports
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
         Begin Table = "tbl_ResultsReports"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 7
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View1'
GO
/****** Object:  View [dbo].[View_3]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_3]
AS
SELECT     dbo.tbl_Trial.Trial, dbo.tbl_OverAllResultsGeneral.OverAllScore, dbo.tbl_OverAllResultsGeneral.OverAllRatings, dbo.tbl_Student.StudID
FROM         dbo.tbl_Student INNER JOIN
                      dbo.tbl_OverAllResultsGeneral ON dbo.tbl_Student.StudID = dbo.tbl_OverAllResultsGeneral.StudID INNER JOIN
                      dbo.tbl_Trial ON dbo.tbl_OverAllResultsGeneral.TrialID = dbo.tbl_Trial.TrailID
WHERE     (dbo.tbl_Student.StudID = 3) AND (dbo.tbl_OverAllResultsGeneral.TrialID = 1)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[5] 2[17] 3) )"
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
         Begin Table = "tbl_Student"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 125
               Right = 406
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Trial"
            Begin Extent = 
               Top = 19
               Left = 553
               Bottom = 108
               Right = 713
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_OverAllResultsGeneral"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 1
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
         Width = 1875
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
/****** Object:  View [dbo].[View_4]    Script Date: 02/04/2012 05:29:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_4]
AS
SELECT     LastName, FirstName, MiddleName, Age
FROM         dbo.tbl_Student
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
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
         Begin Table = "tbl_Student"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_4'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_4'
GO
/****** Object:  ForeignKey [FK_tbl_CategoryFormResults_tbl_Category]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CategoryFormResults_tbl_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]'))
ALTER TABLE [dbo].[tbl_CategoryFormResults]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_CategoryFormResults] CHECK CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Category]
GO
/****** Object:  ForeignKey [FK_tbl_CategoryFormResults_tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CategoryFormResults_tbl_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]'))
ALTER TABLE [dbo].[tbl_CategoryFormResults]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Student] FOREIGN KEY([StudID])
REFERENCES [dbo].[tbl_Student] ([StudID])
GO
ALTER TABLE [dbo].[tbl_CategoryFormResults] CHECK CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Student]
GO
/****** Object:  ForeignKey [FK_tbl_CategoryFormResults_tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_CategoryFormResults_tbl_Trial]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_CategoryFormResults]'))
ALTER TABLE [dbo].[tbl_CategoryFormResults]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Trial] FOREIGN KEY([TrailID])
REFERENCES [dbo].[tbl_Trial] ([TrailID])
GO
ALTER TABLE [dbo].[tbl_CategoryFormResults] CHECK CONSTRAINT [FK_tbl_CategoryFormResults_tbl_Trial]
GO
/****** Object:  ForeignKey [FK_tbl_OverAllResultsGeneral_tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_OverAllResultsGeneral_tbl_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_OverAllResultsGeneral]'))
ALTER TABLE [dbo].[tbl_OverAllResultsGeneral]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OverAllResultsGeneral_tbl_Student] FOREIGN KEY([StudID])
REFERENCES [dbo].[tbl_Student] ([StudID])
GO
ALTER TABLE [dbo].[tbl_OverAllResultsGeneral] CHECK CONSTRAINT [FK_tbl_OverAllResultsGeneral_tbl_Student]
GO
/****** Object:  ForeignKey [FK_tbl_OverAllResultsGeneral_tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_OverAllResultsGeneral_tbl_Trial]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_OverAllResultsGeneral]'))
ALTER TABLE [dbo].[tbl_OverAllResultsGeneral]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OverAllResultsGeneral_tbl_Trial] FOREIGN KEY([TrialID])
REFERENCES [dbo].[tbl_Trial] ([TrailID])
GO
ALTER TABLE [dbo].[tbl_OverAllResultsGeneral] CHECK CONSTRAINT [FK_tbl_OverAllResultsGeneral_tbl_Trial]
GO
/****** Object:  ForeignKey [FK_tbl_ResultsReports_tbl_Category]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_ResultsReports_tbl_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]'))
ALTER TABLE [dbo].[tbl_ResultsReports]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ResultsReports_tbl_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tbl_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tbl_ResultsReports] CHECK CONSTRAINT [FK_tbl_ResultsReports_tbl_Category]
GO
/****** Object:  ForeignKey [FK_tbl_ResultsReports_tbl_Student]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_ResultsReports_tbl_Student]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]'))
ALTER TABLE [dbo].[tbl_ResultsReports]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ResultsReports_tbl_Student] FOREIGN KEY([StudID])
REFERENCES [dbo].[tbl_Student] ([StudID])
GO
ALTER TABLE [dbo].[tbl_ResultsReports] CHECK CONSTRAINT [FK_tbl_ResultsReports_tbl_Student]
GO
/****** Object:  ForeignKey [FK_tbl_ResultsReports_tbl_Trial]    Script Date: 02/04/2012 05:29:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_ResultsReports_tbl_Trial]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ResultsReports]'))
ALTER TABLE [dbo].[tbl_ResultsReports]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ResultsReports_tbl_Trial] FOREIGN KEY([TrialID])
REFERENCES [dbo].[tbl_Trial] ([TrailID])
GO
ALTER TABLE [dbo].[tbl_ResultsReports] CHECK CONSTRAINT [FK_tbl_ResultsReports_tbl_Trial]
GO
