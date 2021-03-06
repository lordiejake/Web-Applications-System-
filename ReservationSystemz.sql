/****** Object:  ForeignKey [FK_CheckIN_ReservationDetails_Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CheckIN_ReservationDetails_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]'))
ALTER TABLE [dbo].[CheckIN_ReservationDetails] DROP CONSTRAINT [FK_CheckIN_ReservationDetails_Employee]
GO
/****** Object:  ForeignKey [FK_CheckIN_ReservationDetails_Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CheckIN_ReservationDetails_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]'))
ALTER TABLE [dbo].[CheckIN_ReservationDetails] DROP CONSTRAINT [FK_CheckIN_ReservationDetails_Guest]
GO
/****** Object:  ForeignKey [FK_CheckIN_ReservationDetails_Room]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CheckIN_ReservationDetails_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]'))
ALTER TABLE [dbo].[CheckIN_ReservationDetails] DROP CONSTRAINT [FK_CheckIN_ReservationDetails_Room]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckIN_Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckIN_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckIN]'))
ALTER TABLE [dbo].[GroupReservationCheckIN] DROP CONSTRAINT [FK_GroupReservationCheckIN_Employee]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckIN_Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckIN_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckIN]'))
ALTER TABLE [dbo].[GroupReservationCheckIN] DROP CONSTRAINT [FK_GroupReservationCheckIN_Guest]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckINdetails_GroupReservationCheckIN]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckINdetails_GroupReservationCheckIN]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckINdetails]'))
ALTER TABLE [dbo].[GroupReservationCheckINdetails] DROP CONSTRAINT [FK_GroupReservationCheckINdetails_GroupReservationCheckIN]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckINdetails_Room]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckINdetails_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckINdetails]'))
ALTER TABLE [dbo].[GroupReservationCheckINdetails] DROP CONSTRAINT [FK_GroupReservationCheckINdetails_Room]
GO
/****** Object:  ForeignKey [FK_Payments_CheckIN_ReservationDetails]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_CheckIN_ReservationDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_CheckIN_ReservationDetails]
GO
/****** Object:  ForeignKey [FK_Payments_Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Employee]
GO
/****** Object:  ForeignKey [FK_Payments_GroupReservationCheckIN]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_GroupReservationCheckIN]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_GroupReservationCheckIN]
GO
/****** Object:  ForeignKey [FK_Payments_Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_Payments_Guest]
GO
/****** Object:  ForeignKey [FK_Room_RoomType]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Room_RoomType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Room]'))
ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_Room_RoomType]
GO
/****** Object:  ForeignKey [FK_RoomType_RoomCondition]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoomType_RoomCondition]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoomType]'))
ALTER TABLE [dbo].[RoomType] DROP CONSTRAINT [FK_RoomType_RoomCondition]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
DROP VIEW [dbo].[View_1]
GO
/****** Object:  View [dbo].[View_4]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
DROP VIEW [dbo].[View_4]
GO
/****** Object:  View [dbo].[View_2]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
DROP VIEW [dbo].[View_2]
GO
/****** Object:  View [dbo].[View1]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
DROP VIEW [dbo].[View1]
GO
/****** Object:  View [dbo].[View_3]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
DROP VIEW [dbo].[View_3]
GO
/****** Object:  Table [dbo].[GroupReservationCheckINdetails]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckINdetails]') AND type in (N'U'))
DROP TABLE [dbo].[GroupReservationCheckINdetails]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
DROP TABLE [dbo].[Payments]
GO
/****** Object:  Table [dbo].[GroupReservationCheckIN]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckIN]') AND type in (N'U'))
DROP TABLE [dbo].[GroupReservationCheckIN]
GO
/****** Object:  Table [dbo].[CheckIN_ReservationDetails]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]') AND type in (N'U'))
DROP TABLE [dbo].[CheckIN_ReservationDetails]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room]') AND type in (N'U'))
DROP TABLE [dbo].[Room]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoomType]') AND type in (N'U'))
DROP TABLE [dbo].[RoomType]
GO
/****** Object:  Table [dbo].[ExcessInformation]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExcessInformation]') AND type in (N'U'))
DROP TABLE [dbo].[ExcessInformation]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guest]') AND type in (N'U'))
DROP TABLE [dbo].[Guest]
GO
/****** Object:  Table [dbo].[RoomCondition]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoomCondition]') AND type in (N'U'))
DROP TABLE [dbo].[RoomCondition]
GO
/****** Object:  Table [dbo].[SingleRoomCheckingReservation]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SingleRoomCheckingReservation]') AND type in (N'U'))
DROP TABLE [dbo].[SingleRoomCheckingReservation]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeLastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeeFirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeeMiddleName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContactNumber] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeeAddress] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeeUserName] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeePassword] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeLastName], [EmployeeFirstName], [EmployeeMiddleName], [ContactNumber], [EmployeeAddress], [EmployeeUserName], [EmployeePassword]) VALUES (1, N'Duldulao', N'Jake', N'Velasco', N'09073670490', N'Kabacan', N'lai.com', N'123lai')
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeLastName], [EmployeeFirstName], [EmployeeMiddleName], [ContactNumber], [EmployeeAddress], [EmployeeUserName], [EmployeePassword]) VALUES (8, N'Duldulao', N'Jade', N'Velasco', N'09098877557', N'kabacan', N'jade.com', N'123jade')
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeLastName], [EmployeeFirstName], [EmployeeMiddleName], [ContactNumber], [EmployeeAddress], [EmployeeUserName], [EmployeePassword]) VALUES (9, N'Villaester', N'Albert', N'A', N'0918726590', N'kabacan', N'al.com', N'123al')
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[SingleRoomCheckingReservation]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SingleRoomCheckingReservation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SingleRoomCheckingReservation](
	[SingleroomCheckingReservationID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[ExpectedDateCheckIN] [datetime] NOT NULL,
	[HoursTostay] [int] NOT NULL,
 CONSTRAINT [PK_SingleRoomCheckingReservation] PRIMARY KEY CLUSTERED 
(
	[SingleroomCheckingReservationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[SingleRoomCheckingReservation] ON
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (1, 6, CAST(0x00009EB000000000 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (2, 6, CAST(0x00009EB000000000 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (3, 6, CAST(0x00009EB200000000 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (4, 1, CAST(0x00009EB100000000 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (5, 2, CAST(0x00009EB100000000 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (6, 3, CAST(0x00009EB400000000 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (7, 3, CAST(0x00009EB0008C1360 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (8, 1, CAST(0x00009EB101499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (9, 1, CAST(0x00009EB0009450C0 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (10, 3, CAST(0x00009EB101499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (11, 4, CAST(0x00009EB0009450C0 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (12, 6, CAST(0x00009EB00083D600 AS DateTime), 18)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (13, 8, CAST(0x00009EB20172C9E0 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (14, 6, CAST(0x00009EB501499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (15, 2, CAST(0x00009EB1016A8C80 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (16, 7, CAST(0x00009EB7016A8C80 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (17, 10, CAST(0x00009EB100C5C100 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (18, 9, CAST(0x00009ED200000000 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (19, 4, CAST(0x00009EB1009450C0 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (20, 1, CAST(0x00009EB400A79658 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (21, 3, CAST(0x00009EF700A79658 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (22, 10, CAST(0x00009EF70083D600 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (23, 11, CAST(0x00009EB1015A11C0 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (24, 2, CAST(0x00009EB5016A8C80 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (25, 3, CAST(0x00009EB20083D600 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (26, 1, CAST(0x00009EB100A4CB80 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (27, 1, CAST(0x00009EB1016A8C80 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (28, 1, CAST(0x00009EB201499700 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (29, 2, CAST(0x00009EB301499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (30, 7, CAST(0x00009EB200735B40 AS DateTime), 24)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (31, 2, CAST(0x00009EBB0083D600 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (32, 3, CAST(0x00009EB701499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (33, 8, CAST(0x00009EB901499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (34, 4, CAST(0x00009EBB0083D600 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (35, 1, CAST(0x00009EBB0083D600 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (36, 10, CAST(0x00009EBD01499700 AS DateTime), 12)
INSERT [dbo].[SingleRoomCheckingReservation] ([SingleroomCheckingReservationID], [RoomID], [ExpectedDateCheckIN], [HoursTostay]) VALUES (37, 5, CAST(0x00009F8C00000000 AS DateTime), 13)
SET IDENTITY_INSERT [dbo].[SingleRoomCheckingReservation] OFF
/****** Object:  Table [dbo].[RoomCondition]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoomCondition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoomCondition](
	[RoomConditionID] [int] IDENTITY(1,1) NOT NULL,
	[RoomConditionName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_RoomCondition] PRIMARY KEY CLUSTERED 
(
	[RoomConditionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[RoomCondition] ON
INSERT [dbo].[RoomCondition] ([RoomConditionID], [RoomConditionName]) VALUES (1, N'Air Conditioned')
INSERT [dbo].[RoomCondition] ([RoomConditionID], [RoomConditionName]) VALUES (2, N'Non - Air Conditioned')
INSERT [dbo].[RoomCondition] ([RoomConditionID], [RoomConditionName]) VALUES (4, N'-----SELECT ONE----')
SET IDENTITY_INSERT [dbo].[RoomCondition] OFF
/****** Object:  Table [dbo].[Guest]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Guest](
	[GuestID] [int] IDENTITY(1,1) NOT NULL,
	[GuestLastName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GuestFirstName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GuestMiddleName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContactNumber] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Address] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Balance] [money] NOT NULL,
	[No_Companion] [int] NOT NULL,
	[BalanceRefund] [money] NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[GuestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Guest] ON
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (167, N'Dldulao', N'Jake', N'v', N'09098817762', N'kabacan', 600.0000, 5, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (168, N'Arabis', N'Arwind', N'a', N'09098971653', N'kabacan', 650.0000, 6, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (169, N'Villaester', N'Albert', N'A', N'09098818829', N'Kabacan', 0.0000, 6, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (170, N'Duldulao', N'Amina', N'Kumpa', N'0909887536', N'kabacan', 200.0000, 2, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (171, N'Dulduloa', N'duldul', N'udldulao', N'09098817635', N'kabacan', 0.0000, 4, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (172, N'Duldulao', N'Jade', N'V', N'0909187839', N'Kabacan', 0.0000, 5, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (173, N'Duldulao', N'Jake', N'V', N'09182783283', N'kabacan', 550.0000, 3, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (174, N'Charese', N'solteo', N'A', N'0917824888394', N'kabacan', 100.0000, 2, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (175, N'Relojero', N'Jeffrey', N'A', N'09098899718', N'kabacan', 0.0000, 3, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (176, N'solteo', N'Charresse', N'A', N'09091878920', N'Kabacan', 100.0000, 3, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (177, N'Duulao', N'Kane', N'Velasco', N'09189029830', N'A', 0.0000, 2, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (178, N'Sol', N'sl', N'sm', N'0919883992', N'kabacan', 0.0000, 2, 100.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (179, N'Sequino', N'jake', N'Velaco', N'09198273984', N'Lamabcam', 50.0000, 2, 0.0000)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (180, N'duldulao', N'marylou', N'velasco', N'09178829738', N'kabacn', 1000.0000, 4, NULL)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (181, N'ddddddddddddd', N'dd', N'd', N'ddd', N'd', 850.0000, 7, NULL)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (182, N'nnnnnnnnnnn', N'fgfgn', N'fgnfgnfgn', N'fgfgn', N'fgnfgn', 1100.0000, 2, NULL)
INSERT [dbo].[Guest] ([GuestID], [GuestLastName], [GuestFirstName], [GuestMiddleName], [ContactNumber], [Address], [Balance], [No_Companion], [BalanceRefund]) VALUES (183, N'pascual', N'cecile', N'g', N'09091882993', N'kabacan', 0.0000, 4, 0.0000)
SET IDENTITY_INSERT [dbo].[Guest] OFF
/****** Object:  Table [dbo].[ExcessInformation]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExcessInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExcessInformation](
	[InformationExcessID] [int] IDENTITY(1,1) NOT NULL,
	[Excess_ChargeTIME] [money] NOT NULL,
	[Excess_ChargePERSON] [money] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[InformationExcessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ExcessInformation] ON
INSERT [dbo].[ExcessInformation] ([InformationExcessID], [Excess_ChargeTIME], [Excess_ChargePERSON]) VALUES (1, 75.0000, 150.0000)
SET IDENTITY_INSERT [dbo].[ExcessInformation] OFF
/****** Object:  Table [dbo].[RoomType]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoomType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoomType](
	[RoomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UpdatedRoomTypeName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UpdatedRoomTypeBill] [money] NOT NULL,
	[UpdatedRoomTypeStatus] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RoomConditionID] [int] NOT NULL,
	[Number_Expected_Person] [int] NULL,
	[UpdatedRoomTypeBill_3hours] [money] NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[RoomType] ON
INSERT [dbo].[RoomType] ([RoomTypeID], [UpdatedRoomTypeName], [UpdatedRoomTypeBill], [UpdatedRoomTypeStatus], [RoomConditionID], [Number_Expected_Person], [UpdatedRoomTypeBill_3hours]) VALUES (15, N'Family', 600.0000, N'there are 1  room/s available', 1, 5, 500.0000)
INSERT [dbo].[RoomType] ([RoomTypeID], [UpdatedRoomTypeName], [UpdatedRoomTypeBill], [UpdatedRoomTypeStatus], [RoomConditionID], [Number_Expected_Person], [UpdatedRoomTypeBill_3hours]) VALUES (16, N'Executive', 400.0000, N'there are 5  room/s available', 1, 2, 300.0000)
INSERT [dbo].[RoomType] ([RoomTypeID], [UpdatedRoomTypeName], [UpdatedRoomTypeBill], [UpdatedRoomTypeStatus], [RoomConditionID], [Number_Expected_Person], [UpdatedRoomTypeBill_3hours]) VALUES (17, N'Deluxe', 350.0000, N'there are  undefined room/s available', 1, 2, 295.0000)
INSERT [dbo].[RoomType] ([RoomTypeID], [UpdatedRoomTypeName], [UpdatedRoomTypeBill], [UpdatedRoomTypeStatus], [RoomConditionID], [Number_Expected_Person], [UpdatedRoomTypeBill_3hours]) VALUES (18, N'Ordinary Room(First Class) w/ cr', 300.0000, N'There are 2 available Room/s', 2, 2, 275.0000)
INSERT [dbo].[RoomType] ([RoomTypeID], [UpdatedRoomTypeName], [UpdatedRoomTypeBill], [UpdatedRoomTypeStatus], [RoomConditionID], [Number_Expected_Person], [UpdatedRoomTypeBill_3hours]) VALUES (19, N'Ordinary Room(Second Class) w/ cr', 250.0000, N'There are 2 available Room/s', 2, 2, 225.0000)
INSERT [dbo].[RoomType] ([RoomTypeID], [UpdatedRoomTypeName], [UpdatedRoomTypeBill], [UpdatedRoomTypeStatus], [RoomConditionID], [Number_Expected_Person], [UpdatedRoomTypeBill_3hours]) VALUES (20, N'Ordinary Room w/o CR', 200.0000, N'There are 4 available Room/s', 2, 2, 200.0000)
SET IDENTITY_INSERT [dbo].[RoomType] OFF
/****** Object:  Table [dbo].[Room]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Room]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Room](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UpdatedStatus_Reserved_CheckIN_Available] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RoomTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Room] ON
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (1, N'Room 08', N'Check IN', 15)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (2, N'Room 01', N'Check IN', 16)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (3, N'Room 03', N'Available', 16)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (4, N'Room 04', N'Check IN', 16)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (5, N'Room 05', N'Available', 16)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (6, N'Room 06', N'Available', 16)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (7, N'Room 09', N'Available', 18)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (8, N'Room 10', N'Available', 18)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (9, N'Room 14', N'Check IN', 19)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (10, N'Room 15', N'Check IN', 19)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (11, N'Room 11', N'Available', 20)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (12, N'Room 12', N'Available', 20)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (13, N'Room 13', N'Available', 20)
INSERT [dbo].[Room] ([RoomID], [RoomName], [UpdatedStatus_Reserved_CheckIN_Available], [RoomTypeID]) VALUES (14, N'Room 16', N'Check IN', 20)
SET IDENTITY_INSERT [dbo].[Room] OFF
/****** Object:  Table [dbo].[CheckIN_ReservationDetails]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CheckIN_ReservationDetails](
	[CheckIN_ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[GuestID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ReservationCheckStatus] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ReservationDate] [datetime] NOT NULL,
	[CheckINDate] [datetime] NOT NULL,
	[Date_Out] [datetime] NULL,
	[Expected_hours] [int] NOT NULL,
	[RoomBill] [money] NOT NULL,
	[ExcessTimeStatus] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TotalBill] [money] NOT NULL,
 CONSTRAINT [PK_CheckIN_ReservationDetails] PRIMARY KEY CLUSTERED 
(
	[CheckIN_ReservationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[CheckIN_ReservationDetails] ON
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (151, 169, 1, 1, N'Check OUT', CAST(0x00009EB101079CC4 AS DateTime), CAST(0x00009EB101079CC4 AS DateTime), CAST(0x00009EB1010EDAAC AS DateTime), 24, 600.0000, N'0.00', 0.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (152, 170, 2, 1, N'ReservationCanceled', CAST(0x00009EB10108D5A8 AS DateTime), CAST(0x00009EB301499700 AS DateTime), CAST(0x00009EB40083D600 AS DateTime), 12, 400.0000, N'0', 200.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (153, 171, 9, 1, N'ReservationCanceled', CAST(0x00009EB1010D9868 AS DateTime), CAST(0x00009EB200735B40 AS DateTime), CAST(0x00009EB300735B40 AS DateTime), 24, 250.0000, N'12', 0.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (154, 172, 1, 1, N'Check OUT', CAST(0x00009EB600B9BCD4 AS DateTime), CAST(0x00009EB600B9BCD4 AS DateTime), CAST(0x00009EB60151A328 AS DateTime), 12, 600.0000, N'0.00', 0.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (155, 173, 3, 1, N'ReservationCanceled', CAST(0x00009EB600BA88BC AS DateTime), CAST(0x00009EBB0083D600 AS DateTime), CAST(0x00009EBB01499700 AS DateTime), 12, 400.0000, N'0', 550.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (156, 174, 3, 1, N'ReservationCanceled', CAST(0x00009EB6014B6CEC AS DateTime), CAST(0x00009EB701499700 AS DateTime), CAST(0x00009EB80083D600 AS DateTime), 12, 400.0000, N'0', 100.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (157, 175, 4, 1, N'Check OUT', CAST(0x00009EB60151281C AS DateTime), CAST(0x00009EB60151281C AS DateTime), CAST(0x00009EB601519E78 AS DateTime), 14, 400.0000, N'0.00', 0.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (158, 176, 7, 1, N'Reserve', CAST(0x00009EB701397A00 AS DateTime), CAST(0x00009EB901499700 AS DateTime), CAST(0x00009EBA0083D600 AS DateTime), 12, 300.0000, N'0', 450.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (159, 177, 4, 1, N'Check OUT', CAST(0x00009EB7013FCFE0 AS DateTime), CAST(0x00009EC30019CCB0 AS DateTime), CAST(0x00009EF60117D5E4 AS DateTime), 12, 400.0000, N'1227', 0.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (160, 178, 11, 1, N'Check OUT', CAST(0x00009EB701404C18 AS DateTime), CAST(0x00009EC30019D73C AS DateTime), CAST(0x00009EF60117DBC0 AS DateTime), 12, 200.0000, N'1227', 0.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (161, 179, 10, 1, N'Reserve', CAST(0x00009EB701545EC4 AS DateTime), CAST(0x00009EBD01499700 AS DateTime), CAST(0x00009EBE0083D600 AS DateTime), 12, 250.0000, N'0', 50.0000)
INSERT [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID], [GuestID], [RoomID], [EmployeeID], [ReservationCheckStatus], [ReservationDate], [CheckINDate], [Date_Out], [Expected_hours], [RoomBill], [ExcessTimeStatus], [TotalBill]) VALUES (162, 183, 5, 1, N'Reserve', CAST(0x00009F8C0084C510 AS DateTime), CAST(0x00009F8C00000000 AS DateTime), CAST(0x0000000000000000 AS DateTime), 13, 400.0000, N'1', 0.0000)
SET IDENTITY_INSERT [dbo].[CheckIN_ReservationDetails] OFF
/****** Object:  Table [dbo].[GroupReservationCheckIN]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckIN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupReservationCheckIN](
	[GroupReservationCheckINID] [int] IDENTITY(1,1) NOT NULL,
	[GuestID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[dateRESERVATION] [datetime] NULL,
	[GrandTotal] [money] NOT NULL,
	[TransactionStatus] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_GroupReservationCheckIN] PRIMARY KEY CLUSTERED 
(
	[GroupReservationCheckINID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[GroupReservationCheckIN] ON
INSERT [dbo].[GroupReservationCheckIN] ([GroupReservationCheckINID], [GuestID], [EmployeeID], [dateRESERVATION], [GrandTotal], [TransactionStatus]) VALUES (9, 180, 1, CAST(0x00009EF50084FD50 AS DateTime), 1000.0000, N'CheckIN')
INSERT [dbo].[GroupReservationCheckIN] ([GroupReservationCheckINID], [GuestID], [EmployeeID], [dateRESERVATION], [GrandTotal], [TransactionStatus]) VALUES (10, 181, 1, CAST(0x00009EF6011791EC AS DateTime), 850.0000, N'CheckIN')
INSERT [dbo].[GroupReservationCheckIN] ([GroupReservationCheckINID], [GuestID], [EmployeeID], [dateRESERVATION], [GrandTotal], [TransactionStatus]) VALUES (11, 182, 1, CAST(0x00009EF6011DFA8C AS DateTime), 1100.0000, N'CheckIN')
SET IDENTITY_INSERT [dbo].[GroupReservationCheckIN] OFF
/****** Object:  Table [dbo].[Payments]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payments](
	[PaymentsID] [int] IDENTITY(1,1) NOT NULL,
	[CheckIN_ReservationID] [int] NULL,
	[GuestID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[TotalBillToPayed] [money] NOT NULL,
	[Credit_Cash_Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Credit_Cash_Payment] [money] NOT NULL,
	[Payments_Balance] [money] NOT NULL,
	[Date_Payment] [datetime] NOT NULL,
	[GroupReservationCheckINID] [int] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Payments] ON
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (162, 151, 169, 1, 1650.0000, N'Cash', 1650.0000, 0.0000, CAST(0x00009EB101080510 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (163, 152, 170, 1, 400.0000, N'Credit', 50.0000, 200.0000, CAST(0x00009EB101091F7C AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (164, 153, 171, 1, 1450.0000, N'Cash', 1450.0000, 0.0000, CAST(0x00009EB1010E5064 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (165, 154, 172, 1, 600.0000, N'Cash', 600.0000, 0.0000, CAST(0x00009EB600B9D8F4 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (166, 155, 173, 1, 400.0000, N'Credit', 100.0000, 200.0000, CAST(0x00009EB600BAB9F4 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (167, 156, 174, 1, 400.0000, N'Credit', 150.0000, 100.0000, CAST(0x00009EB6014B8204 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (168, 157, 175, 1, 700.0000, N'Cash', 700.0000, 0.0000, CAST(0x00009EB60151812C AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (169, 158, 176, 1, 450.0000, N'Credit', 400.0000, 50.0000, CAST(0x00009EB701399AD0 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (170, 159, 177, 1, 400.0000, N'Credit', 200.0000, 200.0000, CAST(0x00009EB7013FF1DC AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (171, 160, 178, 1, 600.0000, N'Credit', 300.0000, 300.0000, CAST(0x00009EB7014072C4 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (172, 161, 179, 1, 250.0000, N'Credit', 200.0000, 50.0000, CAST(0x00009EB701548DA4 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (173, 159, 177, 1, 200.0000, N'Cash', 200.0000, 0.0000, CAST(0x00009EC30019B798 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (174, 159, 177, 1, 92025.0000, N'Cash', 92025.0000, 0.0000, CAST(0x00009EF601181FB8 AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (175, 160, 178, 1, 92025.0000, N'Cash', 92025.0000, 0.0000, CAST(0x00009EF601182C9C AS DateTime), NULL)
INSERT [dbo].[Payments] ([PaymentsID], [CheckIN_ReservationID], [GuestID], [EmployeeID], [TotalBillToPayed], [Credit_Cash_Status], [Credit_Cash_Payment], [Payments_Balance], [Date_Payment], [GroupReservationCheckINID]) VALUES (176, 162, 183, 1, 775.0000, N'Credit', 775.0000, 0.0000, CAST(0x00009F8C00861EC4 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Payments] OFF
/****** Object:  Table [dbo].[GroupReservationCheckINdetails]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckINdetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GroupReservationCheckINdetails](
	[GroupReservationCheckINdetailsID] [int] IDENTITY(1,1) NOT NULL,
	[GroupReservationCheckINID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[RoomBillz] [money] NOT NULL,
	[PersonOccupied] [int] NOT NULL,
	[ExcessPersonz] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ExcessTimeHour] [int] NOT NULL,
	[dateCHECKIN] [datetime] NULL,
	[dateCHECKOUT] [datetime] NULL,
	[AmountTobepaid] [money] NOT NULL,
 CONSTRAINT [PK_GroupReservationCheckINdetails] PRIMARY KEY CLUSTERED 
(
	[GroupReservationCheckINdetailsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[GroupReservationCheckINdetails] ON
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (12, 9, 1, 600.0000, 2, N'0         ', 0, CAST(0x00009EF50084E964 AS DateTime), CAST(0x00009EF5014A828C AS DateTime), 600.0000)
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (13, 9, 2, 400.0000, 2, N'0         ', 0, CAST(0x00009EF50084E964 AS DateTime), CAST(0x00009EF5014A873C AS DateTime), 400.0000)
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (14, 10, 9, 250.0000, 2, N'0         ', 0, CAST(0x00009EF6011783DC AS DateTime), CAST(0x00009EF7005192D0 AS DateTime), 250.0000)
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (15, 10, 10, 250.0000, 2, N'0         ', 0, CAST(0x00009EF6011783DC AS DateTime), CAST(0x00009EF7005199D8 AS DateTime), 250.0000)
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (16, 10, 14, 200.0000, 3, N'1         ', 0, CAST(0x00009EF6011783DC AS DateTime), CAST(0x00009EF60148CFC8 AS DateTime), 350.0000)
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (17, 11, 3, 400.0000, 1, N'0         ', 2, CAST(0x00009EF6011DF834 AS DateTime), CAST(0x00009EF700790284 AS DateTime), 550.0000)
INSERT [dbo].[GroupReservationCheckINdetails] ([GroupReservationCheckINdetailsID], [GroupReservationCheckINID], [RoomID], [RoomBillz], [PersonOccupied], [ExcessPersonz], [ExcessTimeHour], [dateCHECKIN], [dateCHECKOUT], [AmountTobepaid]) VALUES (18, 11, 4, 400.0000, 1, N'0         ', 2, CAST(0x00009EF6011DF834 AS DateTime), CAST(0x00009EF7007904DC AS DateTime), 550.0000)
SET IDENTITY_INSERT [dbo].[GroupReservationCheckINdetails] OFF
/****** Object:  View [dbo].[View_3]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_3]
AS
SELECT     dbo.Room.RoomName, dbo.RoomType.UpdatedRoomTypeBill, dbo.RoomType.UpdatedRoomTypeBill_3hours, 
                      dbo.Room.UpdatedStatus_Reserved_CheckIN_Available, dbo.RoomType.UpdatedRoomTypeName, dbo.RoomCondition.RoomConditionName, dbo.Room.RoomID, 
                      dbo.RoomType.Number_Expected_Person
FROM         dbo.Room INNER JOIN
                      dbo.RoomType ON dbo.Room.RoomTypeID = dbo.RoomType.RoomTypeID INNER JOIN
                      dbo.RoomCondition ON dbo.RoomType.RoomConditionID = dbo.RoomCondition.RoomConditionID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[4] 2[21] 3) )"
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
         Begin Table = "Room"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 346
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RoomType"
            Begin Extent = 
               Top = 6
               Left = 384
               Bottom = 125
               Right = 616
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "RoomCondition"
            Begin Extent = 
               Top = 6
               Left = 654
               Bottom = 95
               Right = 842
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
         Width = 2595
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
/****** Object:  View [dbo].[View1]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View1]
AS
SELECT     dbo.Room.RoomName, dbo.RoomType.UpdatedRoomTypeBill, dbo.RoomType.UpdatedRoomTypeBill_3hours, 
                      dbo.Room.UpdatedStatus_Reserved_CheckIN_Available, dbo.RoomType.UpdatedRoomTypeName, dbo.RoomCondition.RoomConditionName
FROM         dbo.Room INNER JOIN
                      dbo.RoomType ON dbo.Room.RoomTypeID = dbo.RoomType.RoomTypeID INNER JOIN
                      dbo.RoomCondition ON dbo.RoomType.RoomConditionID = dbo.RoomCondition.RoomConditionID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[15] 2[20] 3) )"
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
         Begin Table = "Room"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 166
               Right = 362
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RoomCondition"
            Begin Extent = 
               Top = 6
               Left = 400
               Bottom = 95
               Right = 604
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RoomType"
            Begin Extent = 
               Top = 6
               Left = 642
               Bottom = 171
               Right = 890
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 3090
         Width = 2280
         Width = 2190
         Width = 2100
         Width = 3600
         Width = 2775
         Width = 1500
         Width = 1500
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
/****** Object:  View [dbo].[View_2]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_2]
AS
SELECT     dbo.CheckIN_ReservationDetails.*
FROM         dbo.CheckIN_ReservationDetails
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[9] 2[20] 3) )"
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
         Begin Table = "CheckIN_ReservationDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 245
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
      Begin ColumnWidths = 15
         Width = 284
         Width = 1950
         Width = 2625
         Width = 2550
         Width = 2850
         Width = 2760
         Width = 270
         Width = 3150
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
/****** Object:  View [dbo].[View_4]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_4]
AS
SELECT     CheckINDate, Date_Out
FROM         dbo.CheckIN_ReservationDetails
WHERE     (ReservationCheckStatus = ''Reserve'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
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
         Begin Table = "CheckIN_ReservationDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 3
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
         Width = 2745
         Width = 2520
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
/****** Object:  View [dbo].[View_1]    Script Date: 03/01/2012 07:25:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.Guest.GuestID, dbo.Guest.GuestLastName, dbo.Guest.GuestFirstName, dbo.Guest.GuestMiddleName, dbo.GroupReservationCheckIN.GrandTotal
FROM         dbo.Guest INNER JOIN
                      dbo.GroupReservationCheckIN ON dbo.Guest.GuestID = dbo.GroupReservationCheckIN.GuestID
WHERE     (dbo.GroupReservationCheckIN.TransactionStatus = ''CheckIN'') AND (dbo.Guest.GuestLastName LIKE ''%n%'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[25] 2[11] 3) )"
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
         Begin Table = "Guest"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GroupReservationCheckIN"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 125
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 2760
         Width = 2055
         Width = 2985
         Width = 1755
         Width = 2910
         Width = 2175
         Width = 510
         Width = 2730
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  ForeignKey [FK_CheckIN_ReservationDetails_Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CheckIN_ReservationDetails_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]'))
ALTER TABLE [dbo].[CheckIN_ReservationDetails]  WITH CHECK ADD  CONSTRAINT [FK_CheckIN_ReservationDetails_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[CheckIN_ReservationDetails] CHECK CONSTRAINT [FK_CheckIN_ReservationDetails_Employee]
GO
/****** Object:  ForeignKey [FK_CheckIN_ReservationDetails_Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CheckIN_ReservationDetails_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]'))
ALTER TABLE [dbo].[CheckIN_ReservationDetails]  WITH CHECK ADD  CONSTRAINT [FK_CheckIN_ReservationDetails_Guest] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guest] ([GuestID])
GO
ALTER TABLE [dbo].[CheckIN_ReservationDetails] CHECK CONSTRAINT [FK_CheckIN_ReservationDetails_Guest]
GO
/****** Object:  ForeignKey [FK_CheckIN_ReservationDetails_Room]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CheckIN_ReservationDetails_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[CheckIN_ReservationDetails]'))
ALTER TABLE [dbo].[CheckIN_ReservationDetails]  WITH CHECK ADD  CONSTRAINT [FK_CheckIN_ReservationDetails_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[CheckIN_ReservationDetails] CHECK CONSTRAINT [FK_CheckIN_ReservationDetails_Room]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckIN_Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckIN_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckIN]'))
ALTER TABLE [dbo].[GroupReservationCheckIN]  WITH CHECK ADD  CONSTRAINT [FK_GroupReservationCheckIN_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[GroupReservationCheckIN] CHECK CONSTRAINT [FK_GroupReservationCheckIN_Employee]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckIN_Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckIN_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckIN]'))
ALTER TABLE [dbo].[GroupReservationCheckIN]  WITH CHECK ADD  CONSTRAINT [FK_GroupReservationCheckIN_Guest] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guest] ([GuestID])
GO
ALTER TABLE [dbo].[GroupReservationCheckIN] CHECK CONSTRAINT [FK_GroupReservationCheckIN_Guest]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckINdetails_GroupReservationCheckIN]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckINdetails_GroupReservationCheckIN]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckINdetails]'))
ALTER TABLE [dbo].[GroupReservationCheckINdetails]  WITH CHECK ADD  CONSTRAINT [FK_GroupReservationCheckINdetails_GroupReservationCheckIN] FOREIGN KEY([GroupReservationCheckINID])
REFERENCES [dbo].[GroupReservationCheckIN] ([GroupReservationCheckINID])
GO
ALTER TABLE [dbo].[GroupReservationCheckINdetails] CHECK CONSTRAINT [FK_GroupReservationCheckINdetails_GroupReservationCheckIN]
GO
/****** Object:  ForeignKey [FK_GroupReservationCheckINdetails_Room]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GroupReservationCheckINdetails_Room]') AND parent_object_id = OBJECT_ID(N'[dbo].[GroupReservationCheckINdetails]'))
ALTER TABLE [dbo].[GroupReservationCheckINdetails]  WITH CHECK ADD  CONSTRAINT [FK_GroupReservationCheckINdetails_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[GroupReservationCheckINdetails] CHECK CONSTRAINT [FK_GroupReservationCheckINdetails_Room]
GO
/****** Object:  ForeignKey [FK_Payments_CheckIN_ReservationDetails]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_CheckIN_ReservationDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_CheckIN_ReservationDetails] FOREIGN KEY([CheckIN_ReservationID])
REFERENCES [dbo].[CheckIN_ReservationDetails] ([CheckIN_ReservationID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_CheckIN_ReservationDetails]
GO
/****** Object:  ForeignKey [FK_Payments_Employee]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_Employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Employee]
GO
/****** Object:  ForeignKey [FK_Payments_GroupReservationCheckIN]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_GroupReservationCheckIN]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_GroupReservationCheckIN] FOREIGN KEY([GroupReservationCheckINID])
REFERENCES [dbo].[GroupReservationCheckIN] ([GroupReservationCheckINID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_GroupReservationCheckIN]
GO
/****** Object:  ForeignKey [FK_Payments_Guest]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payments_Guest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payments]'))
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Guest] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Guest] ([GuestID])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Guest]
GO
/****** Object:  ForeignKey [FK_Room_RoomType]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Room_RoomType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Room]'))
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomTypeID])
REFERENCES [dbo].[RoomType] ([RoomTypeID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
/****** Object:  ForeignKey [FK_RoomType_RoomCondition]    Script Date: 03/01/2012 07:25:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoomType_RoomCondition]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoomType]'))
ALTER TABLE [dbo].[RoomType]  WITH CHECK ADD  CONSTRAINT [FK_RoomType_RoomCondition] FOREIGN KEY([RoomConditionID])
REFERENCES [dbo].[RoomCondition] ([RoomConditionID])
GO
ALTER TABLE [dbo].[RoomType] CHECK CONSTRAINT [FK_RoomType_RoomCondition]
GO
