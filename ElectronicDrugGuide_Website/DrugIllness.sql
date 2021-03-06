/****** Object:  ForeignKey [FK_tbl_AvailableForms_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableForms_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableForms]'))
ALTER TABLE [dbo].[tbl_AvailableForms] DROP CONSTRAINT [FK_tbl_AvailableForms_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_AvailableFormsDrugs_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableFormsDrugs_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]'))
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs] DROP CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_AvailableFormsDrugs_tbl_AvailableForms]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableFormsDrugs_tbl_AvailableForms]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]'))
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs] DROP CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_AvailableForms]
GO
/****** Object:  ForeignKey [FK_tbl_AvailableFormsDrugs_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableFormsDrugs_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]'))
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs] DROP CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_Dosage_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Dosage_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Dosage]'))
ALTER TABLE [dbo].[tbl_Dosage] DROP CONSTRAINT [FK_tbl_Dosage_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DosageDrugs_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DosageDrugs_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]'))
ALTER TABLE [dbo].[tbl_DosageDrugs] DROP CONSTRAINT [FK_tbl_DosageDrugs_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DosageDrugs_tbl_Dosage]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DosageDrugs_tbl_Dosage]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]'))
ALTER TABLE [dbo].[tbl_DosageDrugs] DROP CONSTRAINT [FK_tbl_DosageDrugs_tbl_Dosage]
GO
/****** Object:  ForeignKey [FK_tbl_DosageDrugs_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DosageDrugs_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]'))
ALTER TABLE [dbo].[tbl_DosageDrugs] DROP CONSTRAINT [FK_tbl_DosageDrugs_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_DrugClass_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugClass_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugClass]'))
ALTER TABLE [dbo].[tbl_DrugClass] DROP CONSTRAINT [FK_tbl_DrugClass_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DrugIllness_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugIllness_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]'))
ALTER TABLE [dbo].[tbl_DrugIllness] DROP CONSTRAINT [FK_tbl_DrugIllness_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DrugIllness_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugIllness_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]'))
ALTER TABLE [dbo].[tbl_DrugIllness] DROP CONSTRAINT [FK_tbl_DrugIllness_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_DrugIllness_tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugIllness_tbl_Illness]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]'))
ALTER TABLE [dbo].[tbl_DrugIllness] DROP CONSTRAINT [FK_tbl_DrugIllness_tbl_Illness]
GO
/****** Object:  ForeignKey [FK_tbl_Drugs_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Drugs_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Drugs]'))
ALTER TABLE [dbo].[tbl_Drugs] DROP CONSTRAINT [FK_tbl_Drugs_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_drugSideEffects_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_drugSideEffects_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]'))
ALTER TABLE [dbo].[tbl_drugSideEffects] DROP CONSTRAINT [FK_tbl_drugSideEffects_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_drugSideEffects_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_drugSideEffects_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]'))
ALTER TABLE [dbo].[tbl_drugSideEffects] DROP CONSTRAINT [FK_tbl_drugSideEffects_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_drugSideEffects_tbl_SideEffects]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_drugSideEffects_tbl_SideEffects]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]'))
ALTER TABLE [dbo].[tbl_drugSideEffects] DROP CONSTRAINT [FK_tbl_drugSideEffects_tbl_SideEffects]
GO
/****** Object:  ForeignKey [FK_tbl_Illness_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Illness_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Illness]'))
ALTER TABLE [dbo].[tbl_Illness] DROP CONSTRAINT [FK_tbl_Illness_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_IllnessSymptoms_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_IllnessSymptoms_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]'))
ALTER TABLE [dbo].[tbl_IllnessSymptoms] DROP CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_IllnessSymptoms_tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_IllnessSymptoms_tbl_Illness]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]'))
ALTER TABLE [dbo].[tbl_IllnessSymptoms] DROP CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Illness]
GO
/****** Object:  ForeignKey [FK_tbl_IllnessSymptoms_tbl_Symptoms]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_IllnessSymptoms_tbl_Symptoms]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]'))
ALTER TABLE [dbo].[tbl_IllnessSymptoms] DROP CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Symptoms]
GO
/****** Object:  ForeignKey [FK_tbl_MedicineDrugClass_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_MedicineDrugClass_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]'))
ALTER TABLE [dbo].[tbl_MedicineDrugClass] DROP CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_MedicineDrugClass_tbl_DrugClass]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_MedicineDrugClass_tbl_DrugClass]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]'))
ALTER TABLE [dbo].[tbl_MedicineDrugClass] DROP CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_DrugClass]
GO
/****** Object:  ForeignKey [FK_tbl_MedicineDrugClass_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_MedicineDrugClass_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]'))
ALTER TABLE [dbo].[tbl_MedicineDrugClass] DROP CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_SideEffects_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_SideEffects_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_SideEffects]'))
ALTER TABLE [dbo].[tbl_SideEffects] DROP CONSTRAINT [FK_tbl_SideEffects_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_Symptoms_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Symptoms_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Symptoms]'))
ALTER TABLE [dbo].[tbl_Symptoms] DROP CONSTRAINT [FK_tbl_Symptoms_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_Treatment_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Treatment_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Treatment]'))
ALTER TABLE [dbo].[tbl_Treatment] DROP CONSTRAINT [FK_tbl_Treatment_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_Treatment_tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Treatment_tbl_Illness]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Treatment]'))
ALTER TABLE [dbo].[tbl_Treatment] DROP CONSTRAINT [FK_tbl_Treatment_tbl_Illness]
GO
/****** Object:  ForeignKey [FK_tbl_WaningsDrugs_tbl_Drugs]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_WaningsDrugs_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_WaningsDrugs]'))
ALTER TABLE [dbo].[tbl_WaningsDrugs] DROP CONSTRAINT [FK_tbl_WaningsDrugs_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_WaningsDrugs_tbl_Warnings]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_WaningsDrugs_tbl_Warnings]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_WaningsDrugs]'))
ALTER TABLE [dbo].[tbl_WaningsDrugs] DROP CONSTRAINT [FK_tbl_WaningsDrugs_tbl_Warnings]
GO
/****** Object:  View [dbo].[View3]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View3]'))
DROP VIEW [dbo].[View3]
GO
/****** Object:  View [dbo].[View2]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View2]'))
DROP VIEW [dbo].[View2]
GO
/****** Object:  View [dbo].[View_5]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_5]'))
DROP VIEW [dbo].[View_5]
GO
/****** Object:  View [dbo].[View_6]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_6]'))
DROP VIEW [dbo].[View_6]
GO
/****** Object:  View [dbo].[View1]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
DROP VIEW [dbo].[View1]
GO
/****** Object:  View [dbo].[View_8]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_8]'))
DROP VIEW [dbo].[View_8]
GO
/****** Object:  View [dbo].[View_7]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_7]'))
DROP VIEW [dbo].[View_7]
GO
/****** Object:  View [dbo].[View_4]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
DROP VIEW [dbo].[View_4]
GO
/****** Object:  View [dbo].[View_3]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
DROP VIEW [dbo].[View_3]
GO
/****** Object:  View [dbo].[View_2]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
DROP VIEW [dbo].[View_2]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
DROP VIEW [dbo].[View_1]
GO
/****** Object:  View [dbo].[Viewm]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Viewm]'))
DROP VIEW [dbo].[Viewm]
GO
/****** Object:  Table [dbo].[tbl_Treatment]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Treatment]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Treatment]
GO
/****** Object:  Table [dbo].[tbl_WaningsDrugs]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_WaningsDrugs]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_WaningsDrugs]
GO
/****** Object:  Table [dbo].[tbl_AvailableFormsDrugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_AvailableFormsDrugs]
GO
/****** Object:  Table [dbo].[tbl_AvailableForms]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AvailableForms]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_AvailableForms]
GO
/****** Object:  Table [dbo].[tbl_MedicineDrugClass]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_MedicineDrugClass]
GO
/****** Object:  Table [dbo].[tbl_DrugClass]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DrugClass]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_DrugClass]
GO
/****** Object:  Table [dbo].[tbl_DosageDrugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_DosageDrugs]
GO
/****** Object:  Table [dbo].[tbl_Dosage]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Dosage]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Dosage]
GO
/****** Object:  Table [dbo].[tbl_drugSideEffects]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_drugSideEffects]
GO
/****** Object:  Table [dbo].[tbl_SideEffects]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SideEffects]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_SideEffects]
GO
/****** Object:  Table [dbo].[tbl_DrugIllness]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_DrugIllness]
GO
/****** Object:  Table [dbo].[tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Drugs]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Drugs]
GO
/****** Object:  Table [dbo].[tbl_IllnessSymptoms]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_IllnessSymptoms]
GO
/****** Object:  Table [dbo].[tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Illness]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Illness]
GO
/****** Object:  Table [dbo].[tbl_Symptoms]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Symptoms]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Symptoms]
GO
/****** Object:  Table [dbo].[tbl_Warnings]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Warnings]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Warnings]
GO
/****** Object:  Table [dbo].[tbl_UserClient]    Script Date: 02/27/2012 07:20:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_UserClient]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_UserClient]
GO
/****** Object:  Table [dbo].[tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Administrator]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Administrator]
GO
/****** Object:  Table [dbo].[tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Administrator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Administrator](
	[AdminID] [bigint] IDENTITY(1,1) NOT NULL,
	[AdminLname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminFname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminMname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminAddress] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminEmailAddress] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adminuser] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminPassword] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbl_Administrator] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Administrator] ON
INSERT [dbo].[tbl_Administrator] ([AdminID], [AdminLname], [AdminFname], [AdminMname], [AdminAddress], [AdminEmailAddress], [Adminuser], [AdminPassword]) VALUES (1, N'Duldulao', N'Jake', N'Velasco', N'Kabacan, Cotabato', N'duldulaojakes@gmail.com', N'duldulao@', N'kabacan')
SET IDENTITY_INSERT [dbo].[tbl_Administrator] OFF
/****** Object:  Table [dbo].[tbl_UserClient]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_UserClient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_UserClient](
	[userID] [bigint] IDENTITY(1,1) NOT NULL,
	[userlname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userfname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[usermname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[useraddress] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[usercontactnumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[useremailadd] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[usercodename] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userpassword] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbl_UserClient] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tbl_Warnings]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Warnings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Warnings](
	[WarningsID] [bigint] IDENTITY(1,1) NOT NULL,
	[WarningsDescription] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbl_Warnings] PRIMARY KEY CLUSTERED 
(
	[WarningsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Warnings] ON
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (1, N'do not mix with diltiazem or in multivitamin infusion.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (2, N'Administer by slow IV infusion of parenteral solutions;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (3, N'avoid bolus or rapid injection.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (4, N'Infuse over at least 1 hr to avoid renal damage.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (5, N'Fungizone: Protect from exposure to light if not infused within 8 hr of preparations.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (6, N'Infuse slowly over 6 hr.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (7, N'Abelcet: Infuse at rate of 2.5 mg/kg/hr. If infusion takes mor than 2 hr. remix bag by shaking.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (8, N'Amphotec: Infuse at 1 mg/kg/hr over at least 2 hr;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (9, N'do not use anin-line filter.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (10, N'Ambisome: Infuse over more than 2 hr if tolerated.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (11, N'Stop immediately at any sign of anaphytic reaction.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (12, N'Direct IV administration: give slowly over 3-5 min.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (13, N'Rapid administration can lead to seizures.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (14, N'Infuse over 60 mins by direct infusion or into y site or running IV.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (15, N'arrange for oral vancomycin for serious colitis that fails to respond for discontinuation of drug.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (16, N'Administer by intermittent infusion over 15-30 mins. ')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (17, N'Do not mix cetriaxone with any other anti microbial drug.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (18, N'Double check pediatric doses;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (19, N'children are very suspectibleto overdosage.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (20, N'Arrange for optalmologic examinations during long term theraphy.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (21, N'Administer only over 60 mins.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (22, N'Do not administer mor than 1,200 mg in a single 1-hr infusion. ')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (23, N'300 mg to 50 ml diluent, 10 min; 600 mg in 50 mL diluent, 20 min;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (24, N'rapid confusion can cause cardiac arrest.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (25, N'administer slowly each 25 mg over 1 min by  direct injection or ito tubing or running IV.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (26, N'Administer by direct IV injection or into tubing or running Iv.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (27, N'Do not mix with any other drug solution.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (28, N'Administer over 20-60 min qid. Infuse slowly to avoid vein irritation.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (29, N'Administer continuos infussion within 4 hr, or buffer the solution to mentality if administration is prolonged.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (30, N'Arrange for CBC before and every 2 days during therapy and at least weekly thereafter. ')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (31, N'consult with physician to reduce dosage if WBC of platelet counts fall;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (32, N'have the piod antyonist valaxone redility available in case of overdose and CNS depression;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (33, N'Administer slowly over at least 60-90 min.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (34, N'Do not administer IM or subcataneously.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (35, N'Reduce dosage as soon as initial control of syptoms is achieved. ')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (36, N'Maintenance dosage may be as low as one-fourth of the initial dosage;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (37, N'Do not exceed the recomemded dosage:')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (38, N'Consult the physician if overdose done.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (39, N'Caution: Opium tincture,Deodorized, contains 25 times more morphine than paregoric.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (40, N'Do not confuse dosage; severe toxicity can occur.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (41, N'It is used to treat sores in healty patients.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (42, N'Reserve use for herps labialis on lips and face;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (43, N'Consult a physician or pharmacists for follow up.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (44, N' Drug is not for IV use.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (45, N'Do not inject or admixwith other IV solutions')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (46, N'Inadvertent IV administration has caused cardiorespiratory arrest and DEATH.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (47, N'Monitor reaction to drug. peristent cough for longer than 1 week, fever, rash, or')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (48, N'persistent headache may indicate a more serious condition.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (49, N'Monitor patients with rennal function impairment closely;')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (50, N'reduced dosage may be necessary.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (51, N'Discontinue drug and notify physician if lets are greater than five times upper range of normal,')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (52, N'pulmonary infiltrates appear, or patient has difficulty breathing; serrious sides effects can occur.')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (53, N'Do not administer if the patient has diarrhea complicated by fever or blood in the stool. ')
INSERT [dbo].[tbl_Warnings] ([WarningsID], [WarningsDescription]) VALUES (54, N'In case if overdosage: Consult your Pysician(Doctor).')
SET IDENTITY_INSERT [dbo].[tbl_Warnings] OFF
/****** Object:  Table [dbo].[tbl_Symptoms]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Symptoms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Symptoms](
	[SymptomsID] [bigint] IDENTITY(1,1) NOT NULL,
	[Symptoms] [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Symptoms] PRIMARY KEY CLUSTERED 
(
	[SymptomsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Symptoms] ON
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (6, N'Stomach ache ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (7, N'Vomiting ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (8, N'Watery excrements ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (9, N'Sometimes fever for children ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (10, N'Cough   ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (11, N'Difficulty in breathing', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (12, N'Sore throat   ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (13, N'Running nose ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (14, N'Pus inside the ear        ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (15, N'Pain in the ear   ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (16, N'Fever', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (17, N'Lymph node on the neck', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (18, N'Impair in earring ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (20, N'1st stage: Running nose ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (21, N'1st stage: Cough   ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (22, N'1st stage: Fever', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (23, N'2nd stage: Red eyes and pain in looking at bright light', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (24, N'2nd stage: High fever ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (25, N'2nd stage: Rashes during 4 to 7 days and starting from the face to the body', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (26, N'2nd stage: Peeling of the skin after a few days.', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (27, N'2nd stage: White spots in the gum.', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (28, N'Cough and cold ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (29, N'Rashes like small blisters from the breast and face to the whole body: after 24h, the  blisters erupt into scabs.', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (30, N'Contamination from 1-2 days before the rashes and during 2-5 days when it starts.', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (31, N'Chills', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (32, N'Shortness of breath', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (33, N'cough accompanied with yellowisly green phlegm or occasionally blood', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (34, N'sudden onset of high fever and chills', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (35, N'abdominal pain', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (36, N'cramps and bloating', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (37, N'flatulence (passing gas)', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (38, N'urgency to pass stool', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (39, N'feeling of incomplete emptying', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (40, N'loss of appetite', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (41, N'weight loss', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (42, N'headache', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (43, N'fatigue', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (44, N'dehydration', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (45, N'HeadAches', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (46, N'Diarrhoea', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (47, N'Muscular pain', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (48, N'Lethargy', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (49, N'Sickness', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (50, N'Coughing fits', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (51, N'Abdominal pains', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (52, N'decreased energy', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (53, N'weakness ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (54, N'lightheadedness ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (55, N'palpitations (feeling of the heart racing or beating irregularly) ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (56, N'looking pale', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (57, N'chest pain, angina, or heart attack ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (58, N'dizziness ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (59, N'fainting or passing out ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (60, N'rapid heart rate', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (61, N'low blood pressure', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (62, N'rapid breathing ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (63, N'pale or cold skin ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (64, N'yellow skin called jaundice if anemia is due to red blood cell breakdown', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (65, N'heart murmur ', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (66, N'enlargement of the spleen with certain causes of anemia', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (67, N'children sometimes have a prodrome of fever, malaise, headache, lack of appetite, and mild abdominal pain for 1 to 2 days', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (68, N'the rash typically appears first on a child''s trunk, scalp, and face and consists of small, very itchy, flat red spots, which then turn into raised fluid filled vesicles, often described as looking like a ''dewdrop'' that become umbilicated and cloudy and eventually crust over', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (69, N'the fever only lasts about 2 to 4 days', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (70, N'new ''crops'' of the rash on the child''s trunk and then arms and legs continue for about 4 days', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (71, N'all of the lesions are crusted over about 6 to 7 days after the illness began', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (72, N'the crusts then fall off in another 7 days, although it sometimes takes up to 20 days, usually without scarring', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (73, N'Although not as common, children with chicken pox can also develop ulcers in their mouth.', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (74, N'Fever, up to 106 F (41 C)', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (75, N'Muscle, bone and joint pain', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (76, N'Pain behind your eyes', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (77, N'Widespread rash', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (78, N'Nausea and vomiting', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (79, N'bleeding from your gums or nose', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (80, N'Severe abdominal pain', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (81, N'Persistent vomiting', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (82, N'Bleeding under the skin, which may look like bruising', 1)
INSERT [dbo].[tbl_Symptoms] ([SymptomsID], [Symptoms], [AdminID]) VALUES (83, N'Problems with your lungs, liver and heart', 1)
SET IDENTITY_INSERT [dbo].[tbl_Symptoms] OFF
/****** Object:  Table [dbo].[tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Illness]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Illness](
	[IllnessID] [bigint] IDENTITY(1,1) NOT NULL,
	[IllnessName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Illness] PRIMARY KEY CLUSTERED 
(
	[IllnessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Illness] ON
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (1, N'Pneumonia', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (2, N'Diarrhea', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (3, N'Dysentery', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (4, N'Malaria', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (5, N'Measles with eye and mouth Complications', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (6, N'Ear Infection', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (7, N'Anemia', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (8, N'Fever: Dengue hemorragic fever unlikely ', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (9, N'Chicken Pox', 1)
INSERT [dbo].[tbl_Illness] ([IllnessID], [IllnessName], [AdminID]) VALUES (10, N'Cough and Cold', 1)
SET IDENTITY_INSERT [dbo].[tbl_Illness] OFF
/****** Object:  Table [dbo].[tbl_IllnessSymptoms]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_IllnessSymptoms](
	[IllnessSymptomsID] [bigint] IDENTITY(1,1) NOT NULL,
	[IllnessID] [bigint] NULL,
	[SymptomsID] [bigint] NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_IllnessSymptoms] PRIMARY KEY CLUSTERED 
(
	[IllnessSymptomsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_IllnessSymptoms] ON
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (1, 2, 6, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (2, 2, 7, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (3, 2, 8, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (4, 2, 9, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (5, 10, 10, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (6, 10, 11, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (7, 10, 12, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (8, 10, 13, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (9, 6, 14, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (10, 6, 15, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (11, 6, 16, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (12, 6, 17, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (13, 6, 18, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (14, 5, 20, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (15, 5, 21, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (16, 5, 22, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (17, 5, 23, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (18, 5, 24, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (19, 5, 25, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (20, 5, 26, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (21, 5, 27, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (22, 9, 13, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (23, 9, 16, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (24, 9, 28, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (25, 9, 29, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (26, 9, 30, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (27, 1, 16, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (28, 1, 31, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (29, 1, 32, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (30, 1, 33, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (31, 3, 34, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (32, 3, 35, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (33, 3, 36, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (34, 3, 37, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (35, 3, 38, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (36, 3, 39, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (37, 3, 40, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (38, 3, 41, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (39, 3, 42, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (40, 3, 43, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (41, 3, 44, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (42, 3, 7, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (43, 4, 45, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (44, 4, 46, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (45, 4, 47, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (46, 4, 48, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (47, 4, 49, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (48, 4, 50, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (49, 4, 51, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (50, 4, 31, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (51, 7, 52, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (52, 7, 53, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (53, 7, 54, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (54, 7, 55, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (55, 7, 56, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (56, 7, 57, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (57, 7, 58, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (58, 7, 59, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (59, 7, 60, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (60, 7, 61, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (61, 7, 62, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (62, 7, 63, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (63, 7, 64, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (64, 7, 65, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (65, 7, 66, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (66, 7, 43, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (67, 9, 67, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (68, 9, 68, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (69, 9, 69, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (70, 9, 70, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (71, 9, 71, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (72, 9, 72, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (73, 9, 73, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (74, 8, 74, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (75, 8, 75, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (76, 8, 76, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (77, 8, 77, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (78, 8, 78, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (79, 8, 79, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (80, 8, 80, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (81, 8, 81, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (82, 8, 82, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (83, 8, 83, 1)
INSERT [dbo].[tbl_IllnessSymptoms] ([IllnessSymptomsID], [IllnessID], [SymptomsID], [AdminID]) VALUES (84, 8, 45, 1)
SET IDENTITY_INSERT [dbo].[tbl_IllnessSymptoms] OFF
/****** Object:  Table [dbo].[tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Drugs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Drugs](
	[DrugID] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GenericName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[BrandName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Drugs] PRIMARY KEY CLUSTERED 
(
	[DrugID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Drugs] ON
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (1, N'Amoxil', N'amoxicillin (am OX i sil in)', N'Amoxil, Moxatag, Trimox, Wymox', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (2, N'Avelox', N'moxifloxacin (moxi FLOX a sin)', N'Avelox', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (4, N'Bactrim', N'sulfamethoxazole and trimethoprim ', N'Bactrim DS, Septra, Septra DS, SMZ-TMP DS, Sulfatrim Pediatric', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (5, N'Biaxin', N'clarithromycin ', N'Biaxin, Biaxin XL, Biaxin XL-Pak', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (6, N'Levaquin', N'levofloxacin', N'Levaquin, Levaquin Leva-Pak', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (7, N'Florastor Kids', N'saccharomyces boulardii lyo', N'Florastor, Florastor Kids', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (9, N'Imodium', N'loperamide ', N'Diamode', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (10, N'Paregoric', N'Paregoric', N'Generic only. No brands available.', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (11, N'Sandostatin', N'octreotide', N'Sandostatin, Sandostatin LAR Depot', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (12, N'Xifaxan', N'rifaximin', N'rifaximin', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (14, N'Quinine', N'qualaquine', N'qualaquine', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (15, N'Cleocin Pediatric ', N'Clindamycin', N'Cleocin Pediatric', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (16, N'chloroquine phospate', N'aralene phospate', N'aralene phospate', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (17, N'hydroxychloroquine sulfate', N'Plaquinil', N'Plaquinil', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (18, N'Malarone(anti-malarial)', N'atovaquone and proguanil ', N'Malarone, Malarone Pediatric', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (19, N'GamaSTAN S/', N'Immune Globulin (Human)', N'Examples include BayGam and GamaSTAN S/D', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (20, N'BayGam', N'Immune Globulin (Human)', N'Examples include BayGam and GamaSTAN S/D', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (21, N'Penicillin G benzatine', N'pinicillamine', N'Penicillins', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (22, N'acetazolamide', N'Sulfonamides', N'Sulfonamides', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (23, N'Cefaclor', N'caspofongin acetate', N'caspofongin acetate', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (24, N'Erythromycin base', N'Erythromycins.', N'Erythromycins.', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (25, N'Folic acid', N'Folic acid', N'Folic acid', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (26, N'Epogen', N'epoetin alfa (e POE e tin AL fa)', N'Epogen, Procrit', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (27, N'Vitamin B12', N'cyanocobalamine and hydroxocobalamine', N'cyanocobalamine and hydroxocobalamine', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (28, N'Icaps', N'multivitamin with iron (MUL tee VYE ta mins with i ron)', N'Icaps', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (29, N'Poly-Vi-Sol with Iron', N'multivitamin with iron ', N'multivitamin with iron ', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (30, N'acyclovir ', N'acyclovir ', N'Zovirax', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (31, N'famciclovir', N'famciclovir', N'Famvir', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (33, N'foscarnet', N'foscarnet', N'Foscavir', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (34, N'penciclovir', N'penciclovir', N'Denavir', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (35, N'valacyclovir', N'valacyclovir', N'Valtrex', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (36, N'Robitussin', N'guaifenesin,guaifenesin nr', N'Guaifenesin', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (37, N'Robikids', N'Carbocisteine', N'Carbocisteine', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (38, N'Loviscol', N'Carbocisteine', N'Carbocisteine', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (39, N'Dimetapp', N'Phenylephrine HCI Brompheniramine Maleate ', N'Phenylephrine HCI Brompheniramine Maleate ', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (40, N'Azithromycin', N'Zithromax', N'Zithromax', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (41, N'Chloroquine phospate', N'Chloroquine phospate', N'Chloroquine phospate', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (42, N'logen', N'diphenoxylate hydrochloride', N'logen', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (43, N'Lomanate', N'diphenoxylate hydrochloride', N'Lomanate', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (44, N'Lomotil', N'diphenoxylate hydrochloride', N'Lomotil', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (45, N'Lonox', N'diphenoxylate hydrochloride', N'Lonox', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (46, N'Kapectolin', N'kaolin,pectin', N'Kapectolin', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (47, N'Ciprofloxacin', N'Ciprofloxacin', N'fluoroquinolones', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (48, N'ceftriaxone', N'ceftriaxone', N'ceftriaxone', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (49, N'pivmecillinam', N'pivmecillinam', N'pivmecillinam', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (50, N'ampicillin sodium', N'ampicillin sodium Inj', N'Totacillin-N', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (52, N'ampicillin sodium IV', N'ampicillin sodium IV', N'Totacillin-N', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (54, N'Paracetamol(acetaminophen)', N'Paracetamol', N'Paracetamol', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (56, N'Cefadroxil', N'caspofongin acetate', N'Cefadroxil', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (57, N'Cefdenir', N'Omnicef', N'Cefdenir', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (65, N'Diphenhydramine hydochloride', N'antihistamine', N'Benadryl', 1)
INSERT [dbo].[tbl_Drugs] ([DrugID], [DrugName], [GenericName], [BrandName], [AdminID]) VALUES (67, N'Chloramphenicol sodium succinate', N'Chloramphenicol', N'Chloramphenicol', 1)
SET IDENTITY_INSERT [dbo].[tbl_Drugs] OFF
/****** Object:  Table [dbo].[tbl_DrugIllness]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_DrugIllness](
	[DrugIllnessID] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugID] [bigint] NULL,
	[IllnessID] [bigint] NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_DrugIllness] PRIMARY KEY CLUSTERED 
(
	[DrugIllnessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_DrugIllness] ON
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (2, 2, 1, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (3, 4, 1, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (4, 5, 1, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (5, 6, 1, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (6, 7, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (7, 9, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (8, 10, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (9, 11, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (10, 12, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (11, 14, 4, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (12, 15, 4, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (13, 16, 4, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (14, 17, 4, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (15, 18, 4, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (16, 19, 5, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (17, 20, 5, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (18, 21, 6, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (19, 22, 6, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (20, 23, 6, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (21, 24, 6, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (22, 25, 7, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (23, 26, 7, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (24, 27, 7, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (25, 28, 7, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (26, 29, 7, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (27, 30, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (28, 31, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (29, 33, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (30, 34, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (31, 35, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (32, 36, 10, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (33, 37, 10, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (34, 38, 10, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (35, 39, 10, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (36, 40, 4, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (37, 42, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (38, 43, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (39, 44, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (40, 45, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (41, 46, 2, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (42, 47, 3, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (43, 48, 3, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (44, 49, 3, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (45, 50, 3, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (47, 52, 3, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (48, 54, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (49, 54, 8, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (50, 56, 6, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (51, 57, 6, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (52, 65, 9, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (53, 47, 8, 1)
INSERT [dbo].[tbl_DrugIllness] ([DrugIllnessID], [DrugID], [IllnessID], [AdminID]) VALUES (54, 67, 8, 1)
SET IDENTITY_INSERT [dbo].[tbl_DrugIllness] OFF
/****** Object:  Table [dbo].[tbl_SideEffects]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_SideEffects]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_SideEffects](
	[SideEffectsID] [bigint] IDENTITY(1,1) NOT NULL,
	[SideEffects] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_DrugSideEffects] PRIMARY KEY CLUSTERED 
(
	[SideEffectsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_SideEffects] ON
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (1, N'•white patches or sores inside your mouth or on your lips;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (2, N'•fever, swollen glands, rash or itching, joint pain, or general ill feeling;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (3, N'•severe blistering, peeling, and red skin rash;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (4, N'•pale or yellowed skin, yellowing of the eyes, dark colored urine, fever, confusion or weakness;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (5, N'•severe tingling, numbness, pain, muscle weakness; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (6, N'•easy bruising, unusual bleeding (nose, mouth, vagina, or rectum), purple or red pinpoint spots under your skin', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (7, N'•stomach pain, nausea, vomiting;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (8, N'•vaginal itching or discharge;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (9, N'•headache; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (10, N'•swollen, black, or "hairy" tongue.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (11, N'•severe dizziness, fainting, fast or pounding heartbeats;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (12, N'•sudden pain, snapping or popping sound, bruising, swelling, tenderness, stiffness, or loss of movement in any of your joints;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (13, N'•diarrhea that is watery or bloody;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (14, N'•confusion, hallucinations, depression, insomnia or nightmares, unusual thoughts or behavior, feeling light-headed;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (15, N'•seizure (convulsions);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (16, N'•pale or yellowed skin, dark colored urine, fever, weakness;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (17, N'•urinating less than usual or not at all;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (18, N'•easy bruising or bleeding;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (19, N'•numbness, tingling, or unusual pain anywhere in your body;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (20, N'•the first sign of any skin rash, no matter how mild; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (21, N'•nausea, mild diarrhea;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (22, N'•headache, dizziness;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (23, N'•blurred vision;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (24, N'•feeling nervous, anxious, or agitated;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (25, N'•mild skin itching.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (26, N'•fever, sore throat, and headache with a severe blistering, peeling, and red skin rash;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (27, N'•the first sign of any skin rash, no matter how mild;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (28, N'•pale skin, easy bruising or bleeding;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (29, N'•cough, feeling short of breath;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (30, N'•diarrhea that is watery or_ bloody;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (31, N'•feeling restless or irritable, confusion, hallucinations, seizure;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (32, N'•slow heart rate, weak pulse, severe tingling, numbness, muscle pain or weakness;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (33, N'•nausea, stomach pain, loss of appetite, itching, dark urine, clay-colored stools, jaundice (yellowing of the skin or eyes);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (34, N'•fever, chills, body aches, flu symptoms; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (35, N'•urinating less than usual or not at all.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (36, N'•painful or swollen tongue;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (37, N'•dizziness, spinning sensation;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (38, N'•ringing in your ears;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (39, N'•joint pain; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (40, N'•sleep problems (insomnia).', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (41, N'•uneven heartbeats, chest pain, shortness of breath;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (42, N'•diarrhea that is watery_ or bloody;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (43, N'•problems with your hearing; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (44, N'•low fever, itching;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (45, N'•nausea, upper stomach pain, loss of appetite;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (46, N'•dark urine, clay colored stools; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (47, N'•jaundice (yellowing of the skin or eyes).', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (48, N'•upset stomach, vomiting, diarrhea;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (49, N'•unusual or unpleasant taste in your mouth;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (50, N'•tooth discoloration;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (51, N'•mild itching or rash.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (52, N'•severe dizziness, fainting, fast or pounding heartbeat;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (53, N'•sudden pain,_ snapping or popping sound, bruising, swelling, tenderness, stiffness, or loss of movement in any of your joints;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (54, N'•_diarrhea that is watery or bloody;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (55, N'•confusion, hallucinations, depression, tremors, feeling restless or anxious, unusual thoughts or behavior, insomnia, nightmares, seizure (convulsions);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (56, N'•pale skin, fever, weakness, easy bruising or bleeding;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (57, N'•upper stomach pain, itching, loss of appetite, dark urine, clay-colored stools, jaundice (yellowing of the skin or eyes);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (58, N'•urinating less than usual _or not at all;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (59, N'•numbness, burning pain, or tingly feeling in your hands or feet;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (60, N'•the first sign of any skin rash, no matter how mild; or_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (61, N'•severe skin reaction -- fever, sore throat, swelling in your face or tongue, burning in your eyes, skin pain, followed by a red or purple skin rash that spreads (especially in the face or upper body) and causes blistering and peeling.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (62, N'•constipation;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (63, N'•gas', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (64, N'•increased thirst.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (65, N'•burning or prickly sensation on the tongue (quick-dissolve tablets)', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (66, N'•dizziness', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (67, N'•drowsiness', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (68, N'•dry mouth', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (69, N'•gas_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (70, N'•headache', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (71, N'•nausea or vomiting', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (72, N'•tiredness', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (73, N'•Constipation', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (74, N'•lightheadedness', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (75, N'•slow or irregular heartbeats;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (76, N'•gallbladder problems (stomach pain);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (77, N'•pancreatitis (pain in the upper stomach or back, nausea, vomiting, fever, bloating, yellowing of the skin or eyes);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (78, N'•thyroid problems (may be detected by blood tests);', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (79, N'•low blood sugar (headache, confusion, drowsiness, weakness, dizziness, fast heartbeat, sweating, tremor, nausea); or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (80, N'•high blood sugar (increased thirst and urination; flushed or dry skin; drowsiness).', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (81, N'•pain or irritation where you injected the medication.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (82, N'•Loss of appetite; nausea; sensitivity to sunlight; vomiting.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (83, N'•Mild diarrhea; nausea; vomiting.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (84, N'•Loss of appetite; nausea; sensitivity to sunlight; vomiting.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (85, N'•severe or uncontrolled vomiting or diarrhea;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (86, N'•fever, mouth sores;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (87, N'•problems with speech, balance, or walking;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (88, N'•severe skin rash;_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (89, N'•nausea, stomach pain, loss of appetite, dark urine, clay-colored stools, jaundice (yellowing of the skin or eyes); ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (90, N'•easy bruising, unusual bleeding (nose, mouth, vagina, or rectum), purple or red pinpoint spots under your skin.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (91, N'•mild stomach pain or upset stomach;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (92, N'•mild diarrhea; dizziness. mild itching; weakness; headache', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (93, N'•Pain, swelling, tenderness, or redness at the injection site.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (94, N'•Severe allergic reactions (rash; itching; hives; difficulty breathing or swallowing; tightness in the chest; swelling of the mouth, hands, face, lips, eyes, throat, or tongue).', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (95, N'• Black or hairy tongue; exaggerated reflexes;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (96, N'•twitching.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (97, N'•Sore throat.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (98, N'•HeadAche_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (99, N'•Abdominal Pain_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (100, N'•Skin Rash', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (101, N'•mild stomach cramps or upset, nausea, vomiting, and diarrhea.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (102, N'•sore tongue, sores inside the mouth,', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (103, N'•Loss of appetite; mild diarrhea; nausea; stomach pain; vomiting.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (104, N'•Severe allergic reactions (rash; hives; itching; difficulty breathing; tightness in the chest; swelling of the mouth, face, lips, or tongue); bloody stools;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (105, N'•changes in the amount of urine produced; decreased hearing or hearing loss; irregular heartbeat; red, swollen, blistered, or peeling skin; seizures; severe diarrhea; severe stomach pain; stomach cramps; symptoms of liver problems (eg, yellowing of the skin or eyes', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (106, N'•pale stools; severe or persistent nausea, vomiting, or loss of appetite; dark urine).', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (107, N'•decreased sensation to touch, temperature, and vibration;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (108, N'•loss of balance or coordination;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (109, N'•numbness in your feet or around your mouth;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (110, N'•clumsiness in your hands; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (111, N'•feeling tired.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (112, N'•nausea; headache; drowsiness; or mild numbness or tingling.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (113, N'•hives; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (114, N'•difficulty breathing; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (115, N'•swelling of your face, lips, tongue, or throat.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (116, N'•chest pain or heavy feeling, pain spreading to the arm or shoulder, nausea, sweating, general ill feeling;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (117, N'•feeling short of breath, even with mild exertion;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (118, N'•swelling, rapid weight gain;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (119, N'•sudden numbness or weakness, especially on one side of the body;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (120, N'•sudden severe headache, confusion, problems with vision, speech, or balance; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (121, N'•pain, swelling, warmth, or redness in one or both legs.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (122, N'•bright red blood in your stools; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (123, N'•pain in your chest or throat when swallowing a ferrous fumarate tablet.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (124, N'•constipation, diarrhea;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (125, N'•nausea, vomiting, heartburn;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (126, N'•stomach pain, upset stomach;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (127, N'•black or dark-colored stools or urine;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (128, N'•temporary staining of the teeth;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (129, N'•unusual or unpleasant taste in your mouth. and headache', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (130, N'•Changes in vision; dizziness; drowsiness; nausea; sensitivity to sunlight.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (131, N'•Severe allergic reactions (rash; hives; itching; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (132, N'•difficulty breathing; tightness in the chest; swelling of the mouth, face, lips, or tongue); ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (133, N'•aggressive behavior; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (134, N'•agitation;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (135, N'•Diarrhea_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (136, N'•gas_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (137, N'•headache_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (138, N'•nausea_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (139, N'•stomach pain_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (140, N'•tiredness_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (141, N'•vomiting_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (142, N'•Anxiety; .', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (143, N'•appetite loss;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (144, N'•chills and confusion;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (145, N'•decreased sensitivity to touch an depression; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (146, N'•fatigue; general body discomfort and headache; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (147, N'•involuntary muscle movements; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (148, N'•joint pain; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (149, N'•nausea; pain;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (150, N'•rigid muscles; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (151, N'•stomach pain;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (152, N'•sweating; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (153, N'•vision problems', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (154, N'•Bad taste in mouth; burning, pain,', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (155, N'•flushing, or itching at the application site; headache.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (156, N'•Dizziness; headache; nausea; stomach pain; vomiting.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (157, N'•nervousness or anxiety; trouble sleeping; weakness.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (158, N'•Appetite loss;_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (159, N'•clumsiness; diarrhea; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (160, N'•dizziness; feeling of whirling motion;_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (161, N'•mild headache; _', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (162, N'•nausea,stomach cramps, vomiting.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (163, N'•Blurred vision; constipation; decreased sweating; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (164, N'•difficulty sleeping; dizziness; drowsiness; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (165, N'•dry mouth, nose, or skin; headache;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (166, N' •loss of appetite; loss of taste; ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (167, N'•nausea; nervousness.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (168, N'•Drowsiness_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (169, N'•Fever', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (170, N'•Rashes', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (171, N'•Temporary redness of face and neck', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (172, N'•Fast heartbeat', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (173, N'•Difficult or pain urination', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (174, N'•Not feeling well', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (175, N'•Constipation_', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (176, N'•Severe allergic reactions (rash; hives; difficulty breathing; tightness in the chest; swelling of the mouth, face, lips, or tongue); ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (177, N'•fever; stomach pain or swelling.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (178, N'•Nausea, vomiting, or diarrhea may occur. If any of these effects persist or worsen, notify your doctor or pharmacist promptly.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (179, N'•persistent nausea or vomiting, ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (180, N'•stomach/abdominal pain,', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (181, N'•yellowing eyes or skin, ', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (182, N'•easy bruising or bleeding,', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (183, N'•persistent sore throat or fever.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (184, N'•nausea, vomiting..', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (185, N'•dizziness or drowsiness-', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (186, N'•blurred vision-', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (187, N'•feeling nervous, anxious, or agitated', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (188, N'•sleep problems (insomnia or nightmares); or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (189, N'•increased sensitivity of the skin to sunlight', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (190, N'•low fever with nausea, stomach pain, and loss of appetite;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (191, N'•dark urine, clay-colored stools; or', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (192, N'•jaundice (yellowing of the skin or eyes).', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (193, N'•Drowsiness, Sedation, dizziness;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (194, N'•disturbed coordination, fatigue, confusion;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (195, N'•restlessness, excitation, nevousness;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (196, N'•tremor, headache, blured vision, diplophia.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (197, N'•Hypotensions, palpitations.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (198, N'•bradicardia, tachycardia, extracytoles;', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (199, N'•Thickening of bronchial secreations, chest tightness, wheezing, nasal stuffness', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (200, N'•dry mouth, nose, throat, sore throat.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (201, N'•rash', 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (202, N'•HeadAche, mild depression, mental confussion, delirium.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (203, N'•nausea, Vomiting, glossitis, stomalitis.', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (204, N'•fever, mascular rashes, urticaria, abdominal destination,', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (205, N'•pallid cyanosis, vasomotor collapse, irregular rrespirations', 1)
INSERT [dbo].[tbl_SideEffects] ([SideEffectsID], [SideEffects], [AdminID]) VALUES (206, N'•Supperenfections.', 1)
SET IDENTITY_INSERT [dbo].[tbl_SideEffects] OFF
/****** Object:  Table [dbo].[tbl_drugSideEffects]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_drugSideEffects](
	[drug_EffectsID] [bigint] IDENTITY(1,1) NOT NULL,
	[SideEffectsID] [bigint] NULL,
	[DrugID] [bigint] NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_drugSideEffects_1] PRIMARY KEY CLUSTERED 
(
	[drug_EffectsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_drugSideEffects] ON
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (2, 2, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (3, 3, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (4, 4, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (5, 5, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (6, 6, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (7, 7, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (8, 8, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (9, 9, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (10, 10, 1, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (11, 11, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (12, 12, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (13, 13, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (14, 14, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (15, 15, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (16, 16, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (17, 17, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (18, 18, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (19, 19, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (20, 20, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (21, 21, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (22, 22, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (23, 23, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (24, 24, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (25, 25, 2, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (26, 26, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (27, 27, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (28, 28, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (29, 29, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (30, 30, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (31, 31, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (32, 32, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (33, 33, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (34, 34, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (35, 35, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (36, 36, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (37, 37, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (38, 38, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (39, 39, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (40, 40, 4, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (41, 41, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (42, 42, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (43, 43, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (44, 44, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (45, 45, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (46, 46, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (47, 47, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (48, 48, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (49, 49, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (50, 50, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (51, 51, 5, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (52, 52, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (53, 53, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (54, 54, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (55, 55, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (56, 56, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (57, 57, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (58, 58, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (59, 59, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (60, 60, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (61, 61, 6, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (63, 62, 7, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (64, 63, 7, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (65, 64, 7, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (66, 65, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (67, 66, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (68, 67, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (69, 68, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (70, 69, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (71, 70, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (72, 71, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (73, 72, 9, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (74, 66, 10, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (75, 67, 10, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (76, 71, 10, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (77, 74, 10, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (78, 75, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (79, 76, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (80, 77, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (81, 78, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (82, 79, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (83, 80, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (84, 81, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (85, 71, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (86, 73, 11, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (87, 82, 12, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (88, 82, 14, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (89, 83, 15, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (90, 84, 16, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (91, 84, 17, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (92, 85, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (93, 86, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (94, 87, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (95, 88, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (96, 89, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (97, 90, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (98, 91, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (99, 92, 18, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (100, 93, 19, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (101, 94, 19, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (102, 93, 20, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (103, 94, 20, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (104, 71, 21, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (105, 83, 21, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (106, 95, 21, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (107, 96, 21, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (108, 97, 22, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (109, 98, 22, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (110, 99, 22, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (111, 100, 22, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (112, 101, 23, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (113, 102, 23, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (114, 103, 24, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (115, 104, 24, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (116, 105, 24, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (117, 106, 24, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (118, 107, 25, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (119, 108, 25, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (120, 109, 25, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (121, 110, 25, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (122, 111, 25, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (123, 112, 25, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (124, 113, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (125, 114, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (126, 115, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (127, 116, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (128, 117, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (129, 118, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (130, 119, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (131, 120, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (132, 121, 26, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (133, 122, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (134, 123, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (135, 124, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (136, 125, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (137, 126, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (138, 127, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (139, 128, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (140, 129, 27, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (141, 122, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (142, 123, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (143, 124, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (144, 125, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (145, 126, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (146, 127, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (147, 128, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (148, 129, 28, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (149, 122, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (150, 123, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (151, 124, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (152, 125, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (153, 126, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (154, 127, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (155, 128, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (156, 129, 29, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (157, 130, 30, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (158, 131, 30, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (159, 132, 30, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (160, 133, 30, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (161, 134, 30, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (162, 135, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (163, 136, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (164, 137, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (165, 138, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (166, 139, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (167, 140, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (168, 141, 31, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (169, 142, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (170, 143, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (171, 144, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (172, 145, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (173, 146, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (174, 147, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (175, 148, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (176, 149, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (177, 150, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (178, 151, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (179, 152, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (180, 153, 33, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (181, 154, 34, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (182, 155, 34, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (183, 156, 35, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (184, 156, 36, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (185, 157, 36, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (186, 156, 37, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (187, 157, 37, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (188, 156, 38, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (189, 157, 38, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (190, 156, 39, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (191, 157, 39, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (192, 135, 40, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (193, 156, 40, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (194, 143, 40, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (195, 111, 40, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (198, 158, 41, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (199, 159, 41, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (200, 160, 41, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (201, 161, 41, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (202, 162, 41, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (203, 163, 44, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (204, 164, 44, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (205, 165, 44, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (206, 166, 44, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (207, 167, 44, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (208, 151, 44, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (209, 163, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (210, 165, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (211, 96, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (212, 155, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (214, 168, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (215, 66, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (216, 169, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (217, 170, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (218, 171, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (219, 137, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (220, 158, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (221, 172, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (222, 173, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (223, 174, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (224, 167, 43, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (225, 163, 45, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (226, 164, 45, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (227, 165, 45, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (228, 166, 45, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (229, 167, 45, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (230, 151, 45, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (231, 163, 42, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (232, 164, 42, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (233, 165, 42, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (234, 166, 42, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (235, 167, 42, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (236, 151, 42, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (237, 176, 46, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (238, 177, 46, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (239, 178, 50, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (240, 179, 50, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (241, 180, 50, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (242, 181, 50, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (243, 182, 50, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (244, 183, 50, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (245, 178, 52, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (246, 179, 52, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (247, 180, 52, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (248, 181, 52, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (249, 182, 52, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (250, 183, 52, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (251, 184, 48, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (252, 185, 48, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (253, 186, 48, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (254, 187, 48, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (255, 188, 48, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (256, 189, 48, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (257, 184, 49, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (258, 185, 49, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (259, 186, 49, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (260, 187, 49, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (261, 188, 49, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (262, 189, 49, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (263, 184, 47, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (264, 185, 47, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (265, 186, 47, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (266, 187, 47, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (267, 188, 47, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (268, 189, 47, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (269, 101, 56, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (270, 102, 56, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (271, 101, 57, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (272, 102, 57, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (273, 190, 54, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (274, 191, 54, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (275, 192, 54, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (276, 193, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (277, 194, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (278, 195, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (279, 196, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (280, 197, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (281, 198, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (282, 199, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (283, 200, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (284, 201, 65, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (285, 202, 67, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (286, 203, 67, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (287, 204, 67, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (288, 205, 67, 1)
INSERT [dbo].[tbl_drugSideEffects] ([drug_EffectsID], [SideEffectsID], [DrugID], [AdminID]) VALUES (289, 206, 67, 1)
SET IDENTITY_INSERT [dbo].[tbl_drugSideEffects] OFF
/****** Object:  Table [dbo].[tbl_Dosage]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Dosage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Dosage](
	[DosageID] [bigint] IDENTITY(1,1) NOT NULL,
	[Dosage] [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Dosage] PRIMARY KEY CLUSTERED 
(
	[DosageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Dosage] ON
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (1, N'•Robitussin Expectorant: Adults: 5 t 10mL (1 to 2 teaspoonfuls) every 4 t 6 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (2, N'•Robitussin Expectorant: 	6-12 yrs. old: 5mL (1 teaspoonful) every 4 to 6 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (3, N'•Robitussin Expectorant:  2-6 yrs. old: 2.5 t 5mL (1/2 to 1 teaspoonful) every 4 to 6 hours.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (4, N'•Robitussin DM: Adults: 5 to 10mL (1 to 2 teaspoonfuls) every 6 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (5, N'•Robitussin DM: 6-12 yrs. old: 5mL (1 teaspoonful) every 6 to 8 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (6, N'•Robitussin DM: 6-12 yrs.2-6 yrs. old: 2.5 to 5mL (1/2 to 1 teaspoonful) every 6 to 8 hours.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (7, N'•Robitussin LiquiGel:Adults: 1 to2 capsules every 4 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (8, N'•Robitussin LiquiGel:Adults: 6-12 yrs. old: 1 capsule every 4 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (9, N'• Children 2-5 years – 2.5ml (1/2 teaspoon)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (10, N'• Children 6-12 years - 5 ml (1 teaspoon)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (11, N'• Infant Drops: 13-24 months old: 1.2mL every 6 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (12, N'• Pediatric Syrup:  8-12 yrs. Old: 10 to 15mL (2-3 teaspoonfuls) every 8 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (13, N'• Pediatric Syrup:  4-7 yrs. Old: 7.5 to 10mL (1.5-2 teaspoonfuls) every 8 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (14, N'• Pediatric Syrup:  •	1-3 yrs Old: 5 to 7.5mL (1-1.5 teaspoonfuls) every 8 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (15, N'• Adult Suspension: Adults & children over 12 yrs. of age: 10 t', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (16, N'• Adult Suspension: 15mL (2-3 teaspoonfuls) every 8 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (17, N'• Capsule:  Adults & children over 12 yrs. of age: 1 capsule every 8 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (18, N'•Infant drops: 50mg & 15mL bottles (cherry, strawberry, or vanilla flavored)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (19, N'•Pediatric syrup: 5mL, 60mL, & 120mL bottles (cherry flavored)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (20, N'•Adult suspension: 5mL, 60mL, & 120mL (orange flavored)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (21, N'•Capsule: 500mg in box of 100’s (white && green colored capsules)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (22, N'•Dimetapp Infant Drops: 1-3 months: 0.75 to 1mL', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (23, N'•Dimetapp Infant Drops: 3-6 months: 1.0 to 1.25mL', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (24, N'•Dimetapp Infant Drops:6-12 months: 1.25 to 1.5mL', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (25, N'•Dimetapp Infant Drops:1-2 yrs. of age: 1.5 to 2.0mL', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (26, N'•Dimetapp Infant Drops:2-4 yrs. of age: 2.0 to 2.5mL', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (27, N'•Dimetapp Infant Drops:4-6 yrs. of age: 2.5 to 3.0mL', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (28, N'•Dimetapp Infant Drops:Dose according to weight every 6 to 8 hours Administer by mouth 0.15mL per kilogram of body weight.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (29, N'•Dimetapp Syrup: 2-4 yrs. of age: 4mL (0.8 teaspoonfuls)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (30, N'•Dimetapp Syrup: 5-6 yrs. of age: 5mL 1 teaspoonfuls)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (31, N'•Dimetapp Syrup: 7-12 yrs. of age: 7.5mL (1 ½ teaspoonfuls)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (32, N'•Dimetapp Syrup: Adults: 10mL (2 teaspoonfuls)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (33, N'•Dimetapp Infant Drops: 15mL for babies', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (34, N'•Dimetapp Syrup form: 60mL and 120mL for kids and adults', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (35, N'•Amoxil:Children 2 months to 6 years old should be given 80 to 90 mg of amoxicillin per kilogram of body weight per day divided into two or three doses and taken for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (36, N'•Amoxil: if a 2-year-old child weighs 25 pounds, that is about 11 kg. A dose of 80 mg per kilogram per day means the total dosage per day is 880 mg.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (37, N'Divide the total dose into two equal doses of 440 mg each or three equal doses of 293 mg each. ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (38, N'•Amoxil: For children older than 6 years: treat ear infections with 80 to 90 mg per kilogram per day divided into three doses taken for five or seven days, or up to 10 days if the infection is severe, as recommended by a doctor.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (39, N'•Avelox: Pneumonia - 400 mg PO or IV daily for 7 -14 days', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (40, N'•Avelox: Sinusitis - 400 mg PO or IV daily for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (41, N'•Avelox: Acute exacerbation of chronic broncitis: - 400 mg PO or IV daily for 7-21 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (42, N'•Avelox: Uncomplicated skin and skin structure infections: - 400 mg PO or IV daily for 7 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (43, N'•Avelox: complicated skin and skin structure infections: - 400 mg PO or IV daily for 7-21 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (44, N'•Avelox: complicated intra abdominal infections - 400 mg PO or IV daily for 5-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (45, N'•Avelox: Not recommended in patients younger than 18 yrs old.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (46, N'•Bactrim: UTIs: 8 mg/kg/day TMP and 40 mg/kg/day SMZ PO in two divided doses every 12 hr. TMP 8-10 mgg/kg/day. in 2-4 diveded doses every 6, 8 or 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (47, N'•Bactrim: Shigellosis:  8 mg/kg/day TMP and 40 mg/kg/day SMZ PO in two divided doses every 12 hr. TMP 8-10 mgg/kg/day. in 2-4 diveded doses every 6, 8 or 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (48, N'•Bactrim: Acute Otitis Media:  8 mg/kg/day TMP and 40 mg/kg/day SMZ PO in two divided doses every 12 hr. TMP 8-10 mgg/kg/day. in 2-4 diveded doses every 6, 8 or 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (49, N'•Biaxin: Pediatric(Children):Usual dosage 15 mg mg/kg/day PO divided every 12 hr for 10 days. ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (50, N'•Biaxin: Adults: Pharyngitis: 250 mg PO every 12 hr for 7-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (51, N'•Biaxin: Adults: Tonsilitis: 250 mg PO every 12 hr for 7-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (52, N'•Biaxin: Adults: pneumonia:250 mg PO every 12 hr for 7-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (53, N'•Biaxin: Adults: skin infections: 250 mg PO every 12 hr for 7-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (54, N'•Biaxin: Adults: respiratory infections:250 mg PO every 12 hr for 7-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (55, N'•Levaquin: Adults : Community acquired pneumonia: 500 mg daily PO or VI for 7-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (56, N'•Levaquin: Adults : Sinusitis: 500 mg daily PO or VI for 10-14 days or 750 mg/day PO or for 5 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (57, N'•Levaquin: Adults : Chronic Broncitis: 500 mg daily PO or VI for 7 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (58, N'•Levaquin: Adults : Skin Infection: 500 -  750 mg daily PO or VI for 5 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (59, N'•Levaquin: Adults : UTI''s: 250 mg daily PO or IV for 3-10  days; complicated, 750 mg/day PO or IV for 5 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (60, N'•Levaquin: Adults : pyelonphritis: 250 mg daily PO or IV for10  days or 750 mg/day PO or IV for 5 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (61, N'•Levaquin: Adults : Nosocomial pneumonia: 750 mg daily PO or IV for 7-14  days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (62, N'•Levaquin: Adults : Chronic prostatitics: 250 mg daily PO or IV for10  days or 750 mg/day PO or IV for 5 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (63, N'•Levaqiun: Not recommended in patients younger than 18 yrs old.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (64, N'•Florastor:Adult: Take 1 capsule twice a day for 1 week (may increase the dose to a maximum of 6 capsules a day if recommended by a health care professional)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (65, N'•Lorastor Kids: Children: Children from 1 year and up should take 1 capsule or sachet twice a day for 1 week (or as recommended by a health care professional)', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (66, N'•Imodium: Children: Acute Diarrhea: 2-5 years old, 13-20 kg dose form = Liquid 1 mg tid', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (67, N'•Imodium: Children: Acute Diarrhea: 6-8 years old, 20-30 kg dose form = Liquid/capsule 2 mg bid', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (68, N'•Imodium: Children: Acute Diarrhea: 8-12 years old, greater than 30 kg dose form = Liquid/capsule 2 mg tid', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (69, N'•Imodium: Children: chronic Diarrhea: Dosage schedule has not been establish.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (70, N'•Imodium: Children: Traveler''s Diarrhea: younger than 6 years old: consult with physician.Not recommended.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (71, N'•Imodium: Children: Traveler''s Diarrhea: 6-8 years old(48-59 lb); 2 mg after first loose stool, followed by 1 mg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (72, N' after each subsequent loose stool. Do not exceed 6 mg/day.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (73, N'•Imodium: Children: Traveler''s Diarrhea: 9-11 years old(60 - 95 lb); 2 mg after first loose stool, followed by 1 mg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (74, N'•Paregoric: Pediatric: contraindicted in premature infants.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (75, N'•Paregoric: adults: 5-10 ml PO daily-qid (5 ml is equivalent to 2 mg morphine).', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (76, N'•Sandostatin: Pediatric(children): 1-10 mcg/kg/ day continously. SAfety and efficacy for depot injection not stablished.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (77, N'•Sandostatin:Adults:Carcinoid Tumors: 100-600(1st 2 weeks) in 2-4  divided doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (78, N'•Sandostatin:Adults:Vipomas: 200-300 mcg subcataneously in 2-4 divided doses durring initial 2 weeks therapy.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (79, N'•Sandostatin:Adults:acromegaly:50 mcg tid subcataneously, adjusted up t0 100 - 500mcg tid.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (80, N'•Xifaxan: 12 years ild and below: not stablished for safety. not recommended.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (81, N'•Logen: Children: Use only liquid in children 2-12 years old: 0.3- 0.4 mg/kg PO daily in four divided doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (82, N'•Logen: Children: 2 yrs old, weight(kg) = 11-14, Dose: 1.5-3 ml  frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (83, N'•Logen: Children: 3 yrs old,weight(kg) = 12-16,Dose:2-3 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (84, N'•Logen: Children: 4 yrs old,weight(kg) = 14-20,Dose:2-4 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (85, N'•Logen: Children: 5 yrs old,weight(kg) = 16-23,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (86, N'•Logen: Children: 6-8 yrs old,weight(kg) = 17-32,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (87, N'•Logen: Children: 9-12 yrs old,weight(kg) = 23-55,Dose:3.5 - 5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (88, N'•Kapectolin:Children up to 3 years of age—Use and dose must be determined by your doctor.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (89, N'•Kapectolin:Children 3 to 6 years of age—The usual dose is 1 to 2 tablespoonfuls (15 to 30 mL) taken after each  loose bowel movement.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (90, N'•Kapectolin:Children 6 to 12 years of age—The usual dose is 2 to 4 tablespoonfuls (30 to 60 mL) taken after each loose bowel movement.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (91, N'•Kapectolin:Children 12 years of age and over—The usual dose is 3 to 4 tablespoonfuls (45 to 60 mL) taken after each loose bowel movement.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (92, N'•Kapectolin:Adults—The usual dose is 4 to 8 tablespoonfuls (60 to 120 milliliters [mL]) taken after each loose bowel movement.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (93, N'•acetazolamide:Ear Infection: childrens: 5-10 mg/kg IM or IV 6 hr, or ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (94, N'10-15 mg/kg/day PO in divided doses in 250 mg/day.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (95, N'•acetazolamide:AcuteGlaucoma: childrens: 5-10  mg/kg IV every 6hr or 8-30 mg/kg/day', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (96, N' PO or 300-900cmg/m2/ day POin three divided doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (97, N'Strepoccocal infections- including otiti media, URIs of mild to moderate severity.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (98, N'less than 60 lb: 300,000 - 600,000 units IM as a single injection.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (99, N'Older children: 900,000 units IM as a single injection.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (100, N'•Cefaclor: 20 mg/kg per day PO in divided dosage every 8 hr.', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (101, N'•Cefaclor:in severe cases 40 mg/kg/day may be given.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (102, N'•Cefaclor:Otitis Media and pharyngitis: dosage may be devided and administered every 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (103, N'•Cefadroxil: UTI''s dermatologic infections: 30 mg/kg/day PO in divided doses every 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (104, N'•Cefadroxil: Tonsilitis : 30 mg/kg per day in  a single or two divided dosage. ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (105, N'continue for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (106, N'•Cefdenir: UTI''s dermatologic infections: 30 mg/kg/day PO in divided doses every 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (107, N'•Cefdenir: Tonsilitis : 30 mg/kg per day in  a single or two divided dosage. ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (108, N'-continue for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (109, N'•Lomanate: Children: Use only liquid in children 2-12 years old: 0.3- 0.4 mg/kg PO daily in four divided doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (110, N'•Lomanate: Children: 2 yrs old, weight(kg) = 11-14, Dose: 1.5-3 ml  frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (111, N'•Lomanate: Children: 3 yrs old,weight(kg) = 12-16,Dose:2-3 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (112, N'•Lomanate: Children: 4 yrs old,weight(kg) = 14-20,Dose:2-4 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (113, N'•Lomanate: Children: 5 yrs old,weight(kg) = 16-23,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (114, N'•Lomanate: Children: 6-8 yrs old,weight(kg) = 17-32,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (115, N'•Lomanate: Children: 9-12 yrs old,weight(kg) = 23-55,Dose:3.5 - 5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (116, N'•Lomotil: Children: Use only liquid in children 2-12 years old: 0.3- 0.4 mg/kg PO daily in four divided doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (117, N'•Lomotil: Children: 2 yrs old, weight(kg) = 11-14, Dose: 1.5-3 ml  frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (118, N'•Lomotil: Children: 3 yrs old,weight(kg) = 12-16,Dose:2-3 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (119, N'•Lomotil: Children: 4 yrs old,weight(kg) = 14-20,Dose:2-4 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (120, N'•Lomotil: Children: 5 yrs old,weight(kg) = 16-23,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (121, N'•Lomotil: Children: 6-8 yrs old,weight(kg) = 17-32,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (122, N'•Lomotil: Children: 9-12 yrs old,weight(kg) = 23-55,Dose:3.5 - 5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (123, N'•Lonox: Children: Use only liquid in children 2-12 years old: 0.3- 0.4 mg/kg PO daily in four divided doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (124, N'•Lonox: Children: 2 yrs old, weight(kg) = 11-14, Dose: 1.5-3 ml  frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (125, N'•Lonox: Children: 3 yrs old,weight(kg) = 12-16,Dose:2-3 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (126, N'•Lonox: Children: 4 yrs old,weight(kg) = 14-20,Dose:2-4 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (127, N'•Lonox: Children: 5 yrs old,weight(kg) = 16-23,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (128, N'•Lonox: Children: 6-8 yrs old,weight(kg) = 17-32,Dose:2.5 - 4.5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (129, N'•Lonox: Children: 9-12 yrs old,weight(kg) = 23-55,Dose:3.5 - 5 ml frequency: 4 times daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (130, N'•Cleocin Pediatric: Children: Oral: for clindamycin HCI, 8-16 mg/kg/day in 3 or 4 equal doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (131, N'•Cleocin Pediatric: Children: Oral: for clindamycin palmitate HCI, 8-25 mg/kg/day in 3 or 4 equal doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (132, N'•Cleocin Pediatric: Children: Oral: for children weighing less than 10 kg, use 37.5 mg tid as the minimum dose.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (133, N'•Cleocin Pediatric: Children: Parenteral : for neonates , 15-20 mg/kg/day in 3 or 4 equal doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (134, N'•Cleocin Pediatric: Children: Parenteral: Older than 1 mo, 15-40 mg/kg/day in 3 or 4 equal doses or', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (135, N'350 mg/m2/day to 450 mg/m2/day.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (136, N'•chloroquine phospate: Childrens: Amobeasis: Not Recommended.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (137, N'•chloroquine phospate: Childrens: Malaria: For suspension, 5 mg base/kg PRO once a week', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (138, N'on the same day for 2 weeks before exposure and continuing until 6 - 8 weeks after', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (139, N'exposure.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (140, N'•chloroquine phospate: Childrens:Acute atack of malaria:10 mg base/kg 6 hr later and on', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (141, N'days 2 - 3.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (142, N'•Do not exceed 10 mg base/kg/ or 300 mg/base/day.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (143, N'•hydroxychloroquine sulfate: Pediatric :Suppression of malaria: 5 mg base/kg weekly PO up', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (144, N'to a maximum adult dose.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (145, N'•hydroxychloroquine sulfate: Pediatric :Acute attack of malaria: 1st dose: Day1: 10 mg/kg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (146, N'•hydroxychloroquine sulfate: Pediatric :Acute attack of malaria: 2nd dose: 6 hours later: 5 mg/kg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (147, N'•hydroxychloroquine sulfate: Pediatric :Acute attack of malaria: 3rd dose: Day2: 5 mg/kg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (148, N'•hydroxychloroquine sulfate: Pediatric :Acute attack of malaria: 4th dose: Day3: 5 mg/kg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (149, N'•Not recommended to use in children.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (150, N'•Malarone: Children: 11-20 kg in a malarious area of 1 week: 15 tablets.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (151, N'•Malarone: Children: 21-30 kg  in a malarious area of 1 week: 30 tablets.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (152, N'•Malarone: Children: 31-40 kg 1 week: 45 tablets.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (153, N'•Malarone: Children: 11-20 kg in a malarious area of 2 week: 22 tablets.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (154, N'•Malarone: Children: 21-30 kg  in a malarious area of 2 week: 44 tablets.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (155, N'•Malarone: Children: 31-40 kg 2 week: 66 tablets.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (156, N'•Azithromycin: Pediatric Patients: Otitis media: Initally 10 mg/kg PO as a single dose.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (157, N'then 5 mg/kg on day 2-5 or 30mg/kg PO as a sigle dose.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (158, N'•Azithromycin: Pediatric Patients: community acquired pneumonia: Initally 10 mg/kg PO as a single dose.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (159, N'on first day, then 5 mg/kg PO on days 2-5.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (160, N'•Azithromycin: Pediatric Patients: Tonsilitis : 12 mg/kg/day PO on days 1-5(maximum of 500 mg/day).', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (161, N'•Azithromycin: Pediatric Patients: Acute Sinusitis: Initally 10 mg/kg/day PO for 3 days. ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (162, N'•Epogen: 1 mo - 16 years old: Anemia of prematurity: 50units/kg/ IV or subcateneously 3times/wk.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (163, N'•Epogen: 1 mo - 16 years old: Chronic renal failure: 25-100 units/kg/ dose 3 times a week..', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (164, N'•Folic Acid: infants: 0.1 mg/day', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (165, N'•Folic Acid: children: (under 4 years of age): up to 0.3 mg/day', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (166, N'•Folic Acid: children: (over 4 years of age) and adults: 0.4 mg/day', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (167, N'•Folic Acid: pregnant and lactating women: 0.8 mg/day', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (168, N'•Vitamin B12:  0 to 6 months* 0.4 mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (169, N'•Vitamin B12:  7 to 12 months* 0.5 mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (170, N'•Vitamin B12:  1 to 3 years* 0.9mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (171, N'•Vitamin B12:  4 to 8 years* 1.2 mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (172, N'•Vitamin B12:  9 to 13 years* 1.8 mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (173, N'•Vitamin B12: 14 years and older* 2.4 mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (174, N'•Vitamin B12:  Pregnant women* 2.6 mcg daily', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (175, N'•Vitamin B12: Breastfeeding women* 2.8 mcg daily	', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (176, N'•acyclovir:Children:Parenteral:HSV infections in patients younger than 12 years old: 10mg/kg infused ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (177, N'IV over 1 hr every 8 hr for 7 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (178, N'•acyclovir:Children:Parenteral:Shingles, HSC encaphaliis: 20 mg/kg IV over 1 hr every', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (179, N'8 hr for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (180, N'•acyclovir:Children:Parenteral:Neonatal HSV: 10 mg/kg infused over 1 hr ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (181, N'evey 8 hours for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (182, N'•acyclovir:Children:Oral: Younger than 2 yr: Safety not established.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (183, N'•acyclovir:Children:Oral: 2 years older and 40 kg or less: 20 mmg/kg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (184, N'per dose qid(80 mg/kg/day) for 5 days. ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (185, N'•acyclovir:Children:Oral: More than 40 kg: Use adut dosage.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (186, N'•acyclovir:Adults:Parenteral: 5-10 mg/kg infused IV over 1 hr every 8 hr', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (187, N'(15 mg/kg/day) for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (188, N'•acyclovir:Adults:Oral:Initial genital herpes: 200 mg every 4 hr (1,000 mg/day) for 10 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (189, N'•acyclovir:Adults:Oral:Long term suppressive therapy: 400 mg bid for up to 12 mo.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (190, N'•acyclovir:Adults:Oral:ChickenPox: 800 mg qid for 5 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (191, N'Safety not stablished.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (192, N'•Paracetamol:Baby: 10 kg it should have 150 mg.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (193, N'This dose can be taken once every 4 hours', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (194, N'up to 4 times per day if needed', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (195, N'No child should take a total of more than 90 mg per kilogram in a day.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (196, N'•Paracetamol:The usual dose is 15 mg per kilogram of weight-', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (197, N'•Diphenhydramine hydochloride:Children Weighing more than 10kg or 20 lb;', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (198, N'•Diphenhydramine hydochloride:Children:Oral:12.5-25 mg tid-qid PO or 5mmg/kg/day PO or', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (199, N'150 mg/m2/day PO. Maximum daily dose 300 mg.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (200, N'•Diphenhydramine hydochloride:Children:Ora;:Motion Sickness: give full dose propylactically 30 min', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (201, N'before exposure to motion and repeat before meals and it bedtime.', 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (202, N'•Diphenhydramine hydochloride:Children: Oral :cough suppression: 2-6 yr: every 4 hr. not to exceed', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (203, N'25 mg in  24 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (204, N'•Diphenhydramine hydochloride:Children:Oral: 6-12: 12.5 mg every 4 hr PO, not to exceed 75 mg in 24 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (205, N'•Diphenhydramine hydochloride:Children: Parenteral: 5 mg/kg/day or 150 mg/m2 per day IV or by', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (206, N'deep IM injection: Maximum daily dosage is 300 mg divided into four doses.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (207, N'•Erythromycin base: Children: 30-50 mg/kg/day PO divided doses. Specific dosage determined by severity', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (208, N'of infection, age and weight.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (209, N'•Erythromycin base: Children: Dysentric Amoebiasis: 30-50 mg/kg/day', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (210, N'in dividedd doses for 10-14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (211, N'•Erythromycin base: Children: Pertussis: 1 g PO daily in divided for 14 days.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (212, N'•Erythromycin base: Children: Propylaxis against bacterial endocarditis. 2 mg/kg', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (213, N'before procedure and then 10/mg/kg 6 hr later.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (214, N'•Erythromycin base: Children: Chlamidial infections: 50 mg/kg/day PO in divided ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (215, N'dosage for at leastc2 conjunctiviies of new born or 3(pneumonia of infancy) wk.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (216, N'•Ciprofloxacin:Children: Not recommended; produced lesions of joint ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (217, N'cartilage in immature experimental animals.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (218, N'•Ciprofloxacin:Children:Inhalational Anthrax: 15 mg/kg/dose PO ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (219, N'every 12 hour for 60 days or 10 mg/lg/dose IV every 12 hr for 60 days;', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (220, N'Do not exceed 500 mg/dose PO or 400 mg/dose IV.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (221, N'•ceftriaxone:Children: 50-75 mg/kg/day IV or IM in divided doses every 12 hr. Do not exceed 2 g/day.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (222, N'•ceftriaxone:Children:Menigitis: 100 mg/kg/day IV or IM in', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (223, N'divided doses every 12 hr for 7-14 days, do not exceed', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (224, N'4 g/day loading dose of 80-100 mg/kg may be used.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (225, N'•ampicillin sodium:Children: Prevention of basterial endocarditis for GI or GU', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (226, N'surgery or instrumentation:', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (227, N'50mg/kg ampicillin IM or Iv with 1.5 mg/kg gentamicin IM or IV within 30 mins', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (228, N'of procedure. 6 hous laatet, give 25 mg/kg ampicillin IM or IV or 25 mg/kg amoxicillin PO.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (229, N'•ampicillin sodium:Children: Prevention of bacterial endocardities for dental,oral or upper', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (230, N'resiratory procedures: 50 mg/kg/ ampicillin IM or IV within 30 min of procedure.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (231, N'•BayGam/GamaSTAN S/:Hepaitis A: 0.02 IM for household and institutional contacts. Persons traveling', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (232, N'where hepatitis is common: 0.02 ml/kg IM if staying less than 2 o; 0.06 ,l/kg IM repeatedly', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (233, N'every 5 mo for prolonged stay.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (234, N'•BayGam/GamaSTAN S/:MEASLES: 0.25 mL/kg IM if exposed less than 6 days previously', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (235, N'immunocompromised child exposed to measles: o.5 mL/kg to a maximum', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (236, N'of 15 mL IM given immediatly.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (237, N'•BayGam/GamaSTAN S/:Varicella: 0.6-1.2 mL/kg IM given prompty if zoster immune ', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (238, N'globulin is unavailable.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (239, N'•Quinine: Age or Weight: 2 mos up to 4 mos(4-<6 kg): 150 mg/ml * (in 2 ml): 0.4 ml, 300 mg/ml* (in 2 ml) 0.2 ml', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (240, N'•Quinine: Age or Weight: 4 mos up to 12 mos(6-<10 kg): 150 mg/ml * (in 2 ml): 0.6 ml, 300 mg/ml* (in 2 ml). 0.3 ml', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (241, N'•Quinine: Age or Weight: 12 mos up to 2 years old(10-<12 kg): 150 mg/ml * (in 2 ml): 0.8 ml, 300 mg/ml* (in 2 ml). 0.4 ml', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (242, N'•Quinine: Age or Weight: 2 years up to 3 years old(12-<14 kg): 150 mg/ml * (in 2 ml): 1.0 ml, 300 mg/ml* (in 2 ml). 0.6 ml', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (243, N'•Quinine: Age or Weight: 3 years up to 5 years(14-<19 kg): 150 mg/ml * (in 2 ml): 1.2 ml, 300 mg/ml* (in 2 ml). 0.6 ml', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (244, N'•Chloramphenicol: 50-75 mg/kg/ dayIV in divided doses  every 6 hr', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (245, N'•Chloramphenicol: Miningitis: 50-100 mg/kg/day IV in divided doses every 6 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (246, N'•Chloramphenicol:Neonates: Lass than 2 kg and/or younger than 7 days: 25mg/kg daily.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (247, N'•Chloramphenicol: older than 7 days and more than 2 kg: 50 mg/ kg in', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (248, N'divided doses every 12 hr.', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (249, N'•Chloramphenicol: infants and children with immature metabolic processes: 25 mg/kg/day IV', 1)
INSERT [dbo].[tbl_Dosage] ([DosageID], [Dosage], [AdminID]) VALUES (250, N'(Monitor serum conccentration carefully).', 1)
SET IDENTITY_INSERT [dbo].[tbl_Dosage] OFF
/****** Object:  Table [dbo].[tbl_DosageDrugs]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_DosageDrugs](
	[DosageDrugID] [bigint] IDENTITY(1,1) NOT NULL,
	[DosageID] [bigint] NULL,
	[DrugID] [bigint] NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_DosageDrugs] PRIMARY KEY CLUSTERED 
(
	[DosageDrugID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_DosageDrugs] ON
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (1, 1, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (2, 2, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (3, 3, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (4, 4, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (5, 5, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (6, 6, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (7, 7, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (8, 8, 36, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (9, 9, 37, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (10, 10, 37, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (11, 11, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (12, 12, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (13, 13, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (14, 14, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (15, 15, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (16, 16, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (17, 17, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (18, 18, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (19, 19, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (20, 20, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (21, 21, 38, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (22, 22, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (23, 23, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (24, 24, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (25, 25, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (26, 26, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (27, 27, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (28, 28, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (29, 29, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (30, 30, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (31, 31, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (32, 32, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (33, 33, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (34, 34, 39, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (35, 35, 1, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (36, 36, 1, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (37, 37, 1, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (38, 38, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (39, 39, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (40, 40, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (41, 41, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (42, 42, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (43, 43, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (44, 44, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (45, 45, 2, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (46, 46, 4, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (47, 47, 4, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (48, 48, 4, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (49, 49, 5, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (50, 50, 5, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (51, 51, 5, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (52, 52, 5, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (53, 53, 5, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (54, 54, 5, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (55, 55, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (56, 56, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (57, 57, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (58, 58, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (59, 59, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (60, 60, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (61, 61, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (62, 62, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (63, 63, 6, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (64, 64, 7, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (65, 65, 7, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (66, 66, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (67, 67, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (68, 68, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (69, 69, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (70, 70, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (71, 71, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (72, 72, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (73, 73, 9, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (74, 74, 10, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (75, 75, 10, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (76, 76, 11, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (77, 77, 11, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (78, 78, 11, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (79, 79, 11, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (80, 80, 12, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (81, 81, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (82, 82, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (83, 83, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (84, 84, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (85, 85, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (86, 86, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (87, 87, 42, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (88, 109, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (89, 110, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (90, 111, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (91, 112, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (92, 113, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (94, 114, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (95, 115, 43, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (96, 116, 44, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (97, 117, 44, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (98, 118, 44, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (99, 119, 44, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (100, 120, 44, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (101, 121, 44, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (102, 122, 44, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (103, 123, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (104, 124, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (105, 125, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (106, 126, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (107, 127, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (108, 128, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (109, 129, 45, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (110, 88, 46, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (111, 89, 46, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (112, 90, 46, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (113, 91, 46, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (114, 92, 46, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (115, 93, 22, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (116, 94, 22, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (117, 95, 22, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (118, 96, 22, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (119, 97, 21, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (120, 98, 21, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (121, 99, 21, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (122, 100, 23, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (123, 101, 23, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (124, 102, 23, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (125, 103, 56, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (126, 104, 56, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (127, 105, 56, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (128, 106, 57, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (129, 107, 57, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (130, 108, 57, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (131, 130, 15, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (132, 131, 15, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (133, 132, 15, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (134, 133, 15, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (135, 134, 15, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (136, 135, 15, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (137, 136, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (138, 137, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (139, 138, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (140, 139, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (141, 140, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (142, 141, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (143, 142, 16, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (144, 143, 17, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (145, 144, 17, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (146, 145, 17, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (147, 146, 17, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (148, 147, 17, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (149, 148, 17, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (151, 150, 18, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (152, 151, 18, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (153, 152, 18, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (154, 153, 18, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (155, 154, 18, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (156, 155, 18, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (157, 156, 40, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (158, 157, 40, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (159, 158, 40, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (160, 159, 40, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (161, 160, 40, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (162, 161, 40, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (163, 162, 26, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (164, 163, 26, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (165, 164, 25, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (166, 165, 25, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (167, 166, 25, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (168, 167, 25, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (169, 168, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (170, 169, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (171, 170, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (172, 171, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (173, 172, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (174, 173, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (175, 174, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (176, 175, 27, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (177, 176, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (178, 177, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (179, 178, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (180, 179, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (181, 180, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (182, 181, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (183, 182, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (184, 183, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (186, 184, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (187, 185, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (188, 186, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (189, 187, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (190, 188, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (191, 189, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (192, 190, 30, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (193, 191, 31, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (194, 191, 34, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (195, 191, 35, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (196, 192, 54, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (197, 193, 54, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (198, 194, 54, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (199, 195, 54, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (200, 196, 54, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (201, 197, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (202, 198, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (203, 199, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (204, 200, 65, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (205, 201, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (206, 202, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (207, 203, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (209, 204, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (210, 205, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (211, 206, 65, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (212, 207, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (213, 208, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (214, 209, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (215, 210, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (216, 211, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (217, 212, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (218, 213, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (219, 214, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (220, 215, 24, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (221, 216, 47, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (222, 217, 47, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (223, 218, 47, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (224, 219, 47, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (225, 220, 47, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (226, 221, 48, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (227, 222, 48, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (228, 223, 48, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (229, 224, 48, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (230, 225, 50, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (231, 226, 50, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (232, 227, 50, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (233, 228, 50, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (234, 229, 50, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (235, 230, 50, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (236, 225, 52, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (237, 226, 52, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (238, 227, 52, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (239, 228, 52, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (240, 229, 52, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (241, 230, 52, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (242, 231, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (243, 232, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (244, 233, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (245, 234, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (246, 235, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (247, 236, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (248, 237, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (249, 238, 20, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (250, 231, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (251, 232, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (252, 233, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (253, 234, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (254, 235, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (255, 236, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (256, 237, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (257, 238, 19, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (258, 239, 14, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (259, 240, 14, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (260, 241, 14, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (261, 242, 14, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (262, 243, 14, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (263, 244, 67, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (264, 245, 67, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (265, 246, 67, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (266, 247, 67, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (267, 248, 67, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (268, 249, 67, 1)
INSERT [dbo].[tbl_DosageDrugs] ([DosageDrugID], [DosageID], [DrugID], [AdminID]) VALUES (269, 250, 67, 1)
SET IDENTITY_INSERT [dbo].[tbl_DosageDrugs] OFF
/****** Object:  Table [dbo].[tbl_DrugClass]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DrugClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_DrugClass](
	[DrugclassID] [bigint] IDENTITY(1,1) NOT NULL,
	[drugClass] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_DrugClass] PRIMARY KEY CLUSTERED 
(
	[DrugclassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_DrugClass] ON
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (1, N'Antipileptic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (2, N'Antigloucoma drug', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (3, N'Carbonic anhydrase inhibitor Diuratic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (4, N'Sulfanomide', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (6, N'Purine nucleoside analouge', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (7, N'Antibiotic(Penicillin - Ampicillin type)', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (8, N'Antibiotic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (9, N'Penicillin', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (10, N'Macrolide Antibiotic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (11, N'Antibiotic Cephalosporine(2nd Generation)', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (12, N'Antibiotic Cephalosporine(1st Generation)', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (13, N'Antibiotic Cephalosporine(3rd Generation)', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (14, N'4 - aminoquinoline', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (15, N'Amebicide', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (16, N'AntiMalarial', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (17, N'Antibacterial', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (18, N'Fluoroqiunolone', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (19, N'Lincosamide Antibiotic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (20, N'Antihistamin', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (21, N'Decongestant', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (22, N'Antimotion sickness drug', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (23, N'Antiponkinsonian', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (24, N'Cough Suppressant', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (25, N'Sedative hypnotic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (26, N'Recobinant human erythropoietin', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (27, N'Antiviral', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (28, N'Folic Acid', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (29, N'Vitamin Supplement', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (30, N'Antirheumatic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (31, N'Antidiarrheal', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (32, N'analgesic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (33, N'Antipyretic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (34, N'Opioid agonist analgesic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (35, N'Penicillin Antibiotic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (36, N'Cinchonan', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (37, N'Nonioipoid AntiTussive', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (38, N'Vitamin(water soluble)', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (39, N'semi-synthetic macrolide antibiotic', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (40, N'miscellaneous antivirals', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (41, N'Solvent/Detergent Treated', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (42, N'multivitamin w/IRON', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (43, N'Respiratory', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (44, N'Cough & Cold Preparations', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (45, N'Mucokinetics', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (46, N'Mucolytics', 1)
INSERT [dbo].[tbl_DrugClass] ([DrugclassID], [drugClass], [AdminID]) VALUES (47, N'Expectorants', 1)
SET IDENTITY_INSERT [dbo].[tbl_DrugClass] OFF
/****** Object:  Table [dbo].[tbl_MedicineDrugClass]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_MedicineDrugClass](
	[medicineDrugClassID] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugclassID] [bigint] NULL,
	[DrugID] [bigint] NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_MedicineDrugClass] PRIMARY KEY CLUSTERED 
(
	[medicineDrugClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_MedicineDrugClass] ON
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (1, 1, 22, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (2, 2, 22, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (3, 3, 22, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (4, 4, 22, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (5, 6, 30, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (6, 27, 30, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (7, 7, 1, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (8, 8, 52, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (9, 9, 52, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (10, 8, 2, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (11, 18, 2, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (12, 8, 4, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (13, 10, 5, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (14, 11, 23, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (15, 12, 56, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (16, 13, 57, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (17, 13, 48, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (18, 14, 16, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (19, 15, 16, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (20, 16, 16, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (21, 14, 41, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (22, 15, 41, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (23, 17, 41, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (24, 18, 47, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (25, 19, 15, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (26, 20, 39, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (27, 21, 39, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (28, 20, 65, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (29, 22, 65, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (30, 23, 65, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (31, 24, 65, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (32, 25, 65, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (33, 26, 26, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (34, 10, 24, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (35, 27, 31, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (36, 28, 25, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (37, 29, 25, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (38, 14, 17, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (39, 16, 17, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (40, 30, 17, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (41, 31, 9, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (42, 31, 46, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (43, 8, 6, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (44, 18, 6, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (45, 31, 42, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (46, 31, 43, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (47, 31, 44, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (48, 31, 45, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (49, 32, 54, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (50, 33, 54, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (51, 31, 10, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (52, 34, 10, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (53, 17, 34, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (54, 8, 21, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (55, 35, 21, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (56, 16, 14, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (57, 36, 14, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (58, 37, 36, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (59, 37, 37, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (60, 31, 11, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (61, 27, 35, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (62, 38, 27, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (63, 8, 12, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (64, 31, 12, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (65, 17, 47, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (66, 8, 50, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (67, 9, 50, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (68, 39, 40, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (69, 40, 33, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (70, 41, 19, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (71, 41, 20, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (72, 42, 28, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (73, 43, 38, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (74, 44, 38, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (75, 45, 38, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (76, 46, 38, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (77, 16, 18, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (78, 9, 49, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (79, 8, 67, 1)
INSERT [dbo].[tbl_MedicineDrugClass] ([medicineDrugClassID], [DrugclassID], [DrugID], [AdminID]) VALUES (84, 8, 30, 1)
SET IDENTITY_INSERT [dbo].[tbl_MedicineDrugClass] OFF
/****** Object:  Table [dbo].[tbl_AvailableForms]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AvailableForms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_AvailableForms](
	[FormsID] [bigint] IDENTITY(1,1) NOT NULL,
	[AvailableForms] [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_AvailableForms] PRIMARY KEY CLUSTERED 
(
	[FormsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_AvailableForms] ON
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (1, N'Tablets:125, 250 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (2, N'Capsules:500 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (3, N'Powder for Injection :500 mg/vial', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (4, N'Tablets: 400,800 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (5, N'Capsules: 200 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (6, N'Suspension: 200 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (7, N'Powder for injection: 500 mL/vial, 1000 mg/vial;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (8, N'Injection: 50 mg/mL', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (9, N'Ointment: 50 mg/g;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (10, N'Cream: 50 mg/g', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (11, N'Chewable Tablets: 125, 200, 250, 400 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (12, N'Tablets: 500, 875 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (13, N'Capsules: 250, 500 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (14, N'Powder for aral Suppression: 50 mg/mL; 125 mg/5 mL, 200 mg/5', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (15, N'250 mg/5 mL, 400 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (16, N'Tablets for oral suspension: 200, 400 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (17, N'Capsules: 250, 500 mg; ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (18, N'Powder for Oral Suspension: 125 mg/5 mL, 250 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (19, N'Powder for injection: 250, 500 mg,1,2 g.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (20, N'Tablets: 400mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (21, N'Injection: 400 mg in 250 mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (22, N'Tablets: 80 mg trimethroprim (TMP), 400 mg sulfamethoxazole;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (23, N'160 mg trimethroprim, 800 mg sulmafedoxazole.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (24, N'Oral Suspension: 40 mg trimethroprim, 200 mg ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (25, N'sulfamethoxazolone per 5 mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (26, N'Tablets: 250, 500 mg;--', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (27, N'granules for Suspension: 125, 250 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (28, N'ER tablets: 500, 1000 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (29, N'Capsules: 250, 500 mg; ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (30, N'Chewable Tablets: 125, 187, 250, 375 mg; ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (31, N'ER Tablets: 375, 500 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (32, N'Powder for Suspension: 125 mg/5 mL, 187 mg/5 mL,', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (33, N'250 mg/5 mL, 250 mg/ 5 mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (34, N'Capsules: 500 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (35, N'Tablets: 1, 000 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (36, N'Powder for oral suspension: 125 mg/5 mL, 250 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (37, N'250 mg/5 mL  ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (38, N'Capsules: 300 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (39, N'Oral suspension: 125 mg/5 mL; 250 mg/5 mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (40, N'Powder for injection: 2g;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (41, N'Injection: 1,2 g. ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (42, N'Tablets: 250, 500 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (43, N'Tablets: 100, 250, 500 750 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (44, N'ER Tablets: 500, 1000 mg; ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (45, N'Injection: 200,400 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (46, N'Powderr for oral Suspension: 250, 500 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (47, N'Opthalmic Ointmment: 3.33 mg/g;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (48, N'Opthalmic Solution: 3.5 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (49, N'Otic Suspension: 2 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (50, N'Capsules: 75, 150, 300 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (51, N'Granules for Oral solutions: 75 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (52, N'Injection: 150 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (53, N'Topical Gel: 1%;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (54, N'Topical Lotion: 1%;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (55, N'Topical Suspension: 1%;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (56, N'Vaginal Cream: 2%;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (57, N'Vaginal Suppository: 100 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (58, N'Tablets: 250, 500, 750 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (59, N'Injection: 500, 750 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (60, N'Premixed Injection: 250, 500, 750 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (61, N'Oral Solution: 25 mg/mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (62, N'Tablets: 2.5 mg diphenoxylate hydrochloride', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (63, N'0.025 mg atropine sulfate.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (64, N'Liquid: 2.5 mg diphenoxylate hydrochloride,', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (65, N'0.025 mg atropine sulfate mg/5 mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (66, N'Suppositories: 80, 120 125, 300, 325, 650 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (67, N'Chewablee Tablets: 80 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (68, N'Tablets: 60, 325, 500, 650 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (69, N'Caplets: 160, 500, 650, mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (70, N'Gelcaps: 500 mg.  ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (71, N'Elixir: 80 mg/ 2.5 mL, 80 mg/5 mL, 120 mg/5 mL, 160 mg/5 mL', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (72, N'500 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (73, N'Solution: 80 mg/ 1.66 mL, 100 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (74, N'Drops: 80 mg/ 0.8 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (75, N'Sprinkle Capsules: 80, 160 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (76, N'Injection: 600,000, 1.2 million, 2.4 million units dose.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (77, N'Tablets: 1,2 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (78, N'Injection: 0.2 mg/ mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (79, N'Injection: 0.05, 0.1, 0.2, 0.5, 1 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (80, N'Depot Injection: 10, 20, 30 mg/5 mL.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (81, N'Tablets: 500 mg, 1 g .', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (82, N'Tablets: 200 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (83, N'Tablets: 10 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (84, N'syrup: 5 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (85, N'Chewable tablets: 5 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (86, N'Orally disentegrating tablets: 5, 10 mg.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (87, N'Capsules soft gels: 25 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (88, N'Capsules: 25, 50 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (89, N'Tablets: 25, 50 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (90, N'Chewable Tablets: 12.5 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (91, N'Elixir: 12.5 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (92, N'Syrup: 12.5 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (93, N'Liquid: 12.5 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (94, N'Injection: 10,50 mg/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (95, N'Solution: 12.5 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (96, N'Injection: 2000, 3000, 4000, 10 000, 20 000, 40 000 units/mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (97, N'Tablets: 250, 333, 500 mg; ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (98, N'DR Capsules: 2550 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (99, N'Ophthalmic ointment: 5 mg/g;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (100, N'Tablets: 10, 20, mg;', 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (101, N'Chewable Tablets: 10 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (102, N'Orally disintegrating tablets: 20, 40 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (103, N'Gelcaps: 10 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (104, N'Powder for oral suspension: 40 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (105, N'Injection: 10 mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (106, N'Premixed: 20 mg/5 mL in 0.90 % sodium Chloride.', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (107, N'Tablets:    200 mg.        ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (108, N'Tablets: 2 mg;   ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (109, N'Capsules: 2 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (110, N'Liquid: 1 m/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (111, N'1 mg/ mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (112, N'Tablets: 250, 500, 600 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (113, N'Powder for injection: 500 mg;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (114, N'Powder for oral suspension: 100 mg/ 5 mL, 200 mg/ 5 mL, 200 mg/5 mL,', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (115, N'1 g/packet;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (116, N'Botles: 2 g to be reconstituded with 60 mL water (Zmax)', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (117, N'Capsule: 500 mg x 100''s;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (118, N'Ped Syrup:100 mg/5 mL x 60 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (119, N'Ped Syrup:100 mg/5 mL x 120 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (120, N'Adult oral suspension:250 mg/5 mL x 60 mL;	', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (121, N'Adult oral suspension:250 mg/5 mL x 120 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (122, N'Infant oral drops: 50 mg/1 mL x 15 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (123, N'Ped Syrup:250 mg/5 mL x 60 mL ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (124, N'Ped Syrup:250 mg/5 mL x 120 mL ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (125, N'Powder for injection: 100 mg/mL; ', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (126, N'Ophthalmic solution: 5mg/5 mL;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (127, N'Ophthalmic ointment: 10 mg/g;', 1)
INSERT [dbo].[tbl_AvailableForms] ([FormsID], [AvailableForms], [AdminID]) VALUES (128, N'Opthalmic powder for solution: 25 mg/vial;', 1)
SET IDENTITY_INSERT [dbo].[tbl_AvailableForms] OFF
/****** Object:  Table [dbo].[tbl_AvailableFormsDrugs]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_AvailableFormsDrugs](
	[FormsDrugsId] [bigint] IDENTITY(1,1) NOT NULL,
	[FormsID] [bigint] NULL,
	[DrugID] [bigint] NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_AvailableFormsDrugs] PRIMARY KEY CLUSTERED 
(
	[FormsDrugsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_AvailableFormsDrugs] ON
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (1, 1, 22, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (2, 2, 22, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (3, 3, 22, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (4, 4, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (5, 5, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (6, 6, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (7, 7, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (8, 8, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (9, 9, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (10, 10, 30, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (11, 11, 1, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (12, 12, 1, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (13, 13, 1, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (14, 14, 1, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (15, 15, 1, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (16, 16, 1, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (17, 17, 50, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (18, 18, 50, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (19, 19, 50, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (20, 20, 2, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (21, 21, 2, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (22, 22, 4, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (23, 23, 4, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (24, 24, 4, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (25, 25, 4, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (26, 26, 5, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (27, 27, 5, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (28, 28, 5, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (29, 29, 23, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (30, 30, 23, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (31, 31, 23, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (32, 32, 23, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (33, 33, 23, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (34, 34, 56, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (35, 35, 56, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (36, 36, 56, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (37, 37, 56, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (38, 38, 57, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (39, 39, 57, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (40, 40, 48, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (41, 41, 48, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (42, 42, 16, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (43, 42, 41, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (44, 43, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (45, 44, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (46, 45, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (47, 46, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (48, 47, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (49, 48, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (50, 49, 47, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (51, 50, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (52, 51, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (53, 52, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (54, 53, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (55, 54, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (56, 55, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (57, 56, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (58, 57, 15, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (59, 58, 6, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (60, 59, 6, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (61, 60, 6, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (62, 61, 6, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (63, 62, 42, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (64, 63, 42, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (65, 64, 42, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (66, 65, 42, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (67, 62, 43, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (68, 63, 43, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (69, 64, 43, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (70, 65, 43, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (71, 62, 44, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (72, 63, 44, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (73, 64, 44, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (74, 65, 44, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (75, 62, 45, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (76, 63, 45, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (77, 64, 45, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (78, 65, 45, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (79, 66, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (80, 67, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (81, 68, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (82, 69, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (83, 70, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (84, 71, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (85, 72, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (86, 73, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (87, 74, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (88, 75, 54, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (89, 76, 21, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (90, 77, 36, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (91, 78, 36, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (92, 79, 11, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (93, 80, 11, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (94, 81, 35, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (95, 82, 12, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (96, 83, 39, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (97, 84, 39, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (98, 85, 39, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (99, 86, 39, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (100, 87, 65, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (101, 88, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (102, 89, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (103, 90, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (104, 91, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (105, 92, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (106, 93, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (107, 94, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (108, 95, 65, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (110, 96, 26, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (111, 97, 24, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (112, 98, 24, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (113, 99, 24, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (114, 100, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (115, 101, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (116, 102, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (117, 103, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (118, 104, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (119, 105, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (120, 106, 31, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (121, 107, 17, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (122, 108, 9, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (123, 109, 9, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (124, 110, 9, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (125, 111, 9, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (126, 112, 40, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (127, 113, 40, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (128, 114, 40, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (129, 115, 40, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (130, 116, 40, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (131, 117, 38, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (132, 118, 38, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (133, 119, 38, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (134, 120, 38, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (135, 121, 38, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (136, 122, 38, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (137, 123, 37, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (138, 124, 37, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (139, 125, 67, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (140, 126, 67, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (141, 127, 67, 1)
INSERT [dbo].[tbl_AvailableFormsDrugs] ([FormsDrugsId], [FormsID], [DrugID], [AdminID]) VALUES (142, 128, 67, 1)
SET IDENTITY_INSERT [dbo].[tbl_AvailableFormsDrugs] OFF
/****** Object:  Table [dbo].[tbl_WaningsDrugs]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_WaningsDrugs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_WaningsDrugs](
	[warningsDrugsID] [bigint] IDENTITY(1,1) NOT NULL,
	[WarningID] [bigint] NULL,
	[DrugID] [bigint] NULL,
 CONSTRAINT [PK_tbl_WaningsDrugs] PRIMARY KEY CLUSTERED 
(
	[warningsDrugsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_WaningsDrugs] ON
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (1, 1, 22)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (2, 2, 30)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (3, 3, 30)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (4, 4, 30)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (5, 5, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (6, 6, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (7, 7, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (8, 8, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (9, 9, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (10, 10, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (11, 11, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (12, 12, 50)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (13, 13, 50)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (14, 12, 52)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (15, 13, 52)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (16, 14, 2)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (17, 15, 56)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (18, 16, 48)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (19, 17, 48)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (20, 18, 16)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (21, 19, 16)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (22, 20, 16)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (23, 18, 41)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (24, 19, 41)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (25, 20, 41)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (26, 21, 47)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (27, 22, 15)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (28, 23, 15)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (29, 24, 15)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (30, 25, 65)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (31, 26, 26)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (32, 27, 26)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (33, 28, 24)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (34, 29, 24)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (35, 30, 31)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (36, 31, 31)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (37, 18, 17)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (38, 19, 17)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (39, 32, 9)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (40, 33, 6)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (41, 34, 6)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (42, 35, 42)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (43, 36, 42)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (44, 35, 43)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (45, 36, 43)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (46, 35, 44)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (47, 36, 44)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (48, 35, 45)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (49, 36, 45)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (50, 37, 54)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (51, 38, 54)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (52, 39, 10)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (53, 40, 10)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (54, 41, 34)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (55, 42, 34)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (56, 43, 34)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (57, 44, 21)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (58, 45, 21)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (59, 46, 21)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (60, 47, 36)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (61, 48, 36)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (62, 49, 11)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (63, 50, 11)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (64, 51, 35)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (65, 52, 35)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (66, 53, 12)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (67, 18, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (68, 19, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (69, 54, 1)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (70, 18, 2)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (71, 19, 2)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (72, 54, 2)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (73, 18, 4)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (74, 19, 4)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (75, 54, 4)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (76, 18, 5)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (77, 19, 5)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (78, 54, 5)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (79, 18, 6)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (80, 19, 6)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (81, 54, 6)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (82, 18, 7)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (83, 19, 7)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (84, 54, 7)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (85, 18, 9)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (86, 19, 9)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (87, 54, 9)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (88, 18, 10)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (89, 19, 10)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (90, 54, 10)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (91, 18, 11)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (92, 19, 11)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (93, 54, 11)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (94, 18, 12)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (95, 19, 12)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (96, 54, 12)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (97, 18, 14)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (98, 19, 14)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (99, 54, 14)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (100, 18, 15)
GO
print 'Processed 100 total records'
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (101, 19, 15)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (102, 54, 15)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (103, 18, 16)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (104, 19, 16)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (105, 54, 16)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (106, 18, 17)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (107, 19, 17)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (108, 54, 17)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (109, 18, 18)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (110, 19, 18)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (111, 54, 18)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (112, 18, 19)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (113, 19, 19)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (114, 54, 19)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (115, 18, 20)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (116, 19, 20)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (117, 54, 20)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (118, 18, 21)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (119, 19, 21)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (120, 54, 21)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (121, 18, 22)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (122, 19, 22)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (123, 54, 22)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (124, 18, 23)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (125, 19, 23)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (126, 54, 23)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (127, 18, 24)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (128, 19, 24)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (129, 54, 24)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (130, 18, 25)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (131, 19, 25)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (132, 54, 25)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (133, 18, 26)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (134, 19, 26)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (135, 54, 26)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (136, 18, 27)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (137, 19, 27)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (138, 54, 27)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (139, 18, 28)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (140, 19, 28)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (141, 54, 28)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (142, 18, 29)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (143, 19, 29)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (144, 54, 29)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (145, 18, 30)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (146, 19, 30)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (147, 54, 30)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (148, 18, 31)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (149, 19, 31)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (150, 54, 31)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (151, 18, 33)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (152, 19, 33)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (153, 54, 33)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (154, 18, 34)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (155, 19, 34)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (156, 54, 34)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (157, 18, 35)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (158, 19, 35)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (159, 54, 35)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (160, 18, 36)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (161, 19, 36)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (162, 54, 36)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (163, 18, 37)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (164, 19, 37)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (165, 54, 37)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (166, 18, 38)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (167, 19, 38)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (168, 54, 38)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (169, 18, 39)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (170, 19, 39)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (171, 54, 39)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (172, 18, 40)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (173, 19, 40)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (174, 54, 40)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (175, 18, 41)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (176, 19, 41)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (177, 54, 41)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (178, 18, 42)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (179, 19, 42)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (180, 54, 42)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (181, 18, 43)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (182, 19, 43)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (183, 54, 43)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (184, 18, 44)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (185, 19, 44)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (186, 54, 44)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (187, 18, 45)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (188, 19, 45)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (189, 54, 45)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (190, 18, 46)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (191, 19, 46)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (192, 54, 46)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (193, 18, 47)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (194, 19, 47)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (195, 54, 47)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (196, 18, 48)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (197, 19, 48)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (198, 54, 48)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (199, 18, 49)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (200, 19, 49)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (201, 54, 49)
GO
print 'Processed 200 total records'
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (202, 18, 50)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (203, 19, 50)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (204, 54, 50)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (205, 18, 52)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (206, 19, 52)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (207, 54, 52)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (208, 18, 54)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (209, 19, 54)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (210, 54, 54)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (211, 18, 56)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (212, 19, 56)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (213, 54, 56)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (214, 18, 57)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (215, 19, 57)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (216, 54, 57)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (217, 18, 65)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (218, 19, 65)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (219, 54, 65)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (220, 18, 67)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (221, 19, 67)
INSERT [dbo].[tbl_WaningsDrugs] ([warningsDrugsID], [WarningID], [DrugID]) VALUES (222, 54, 67)
SET IDENTITY_INSERT [dbo].[tbl_WaningsDrugs] OFF
/****** Object:  Table [dbo].[tbl_Treatment]    Script Date: 02/27/2012 07:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Treatment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Treatment](
	[TreatmentID] [bigint] IDENTITY(1,1) NOT NULL,
	[TreatmentDescription] [varchar](5000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IllnessID] [bigint] NOT NULL,
	[AdminID] [bigint] NULL,
 CONSTRAINT [PK_tbl_Treatment] PRIMARY KEY CLUSTERED 
(
	[TreatmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Treatment] ON
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (1, N'If chest indrawing or general danger sign, give a dose of second line antibiotic or intramascular Benzyl Penicilin and Gentamicin. Then Refer URGENTLY to hospital. ', 1, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (2, N'If breathing rate, fever, and eating are the same, change to the second-line antibiotic and advice the mother to return in 2 days or refer. (If thechild had measles within the last 3 months then refer )', 1, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (3, N'If breathing slower, less fever, or eating better, complete the 3 days of antibiotic treatment.', 1, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (4, N'If cough is more than 30 days, refer for assessment.', 1, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (5, N'If the Diarrhea has not stopped (child is still having 3 or more loose tools per day), do a full reassessment of the child. Give any traetment needed. then REFER to hospital.', 2, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (6, N'If the Diarrhea has stoped (child is having less than 3 loose stools per day), tell the mother to follow up the usual recommendations for the childs age.', 2, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (7, N'If the child is dehydrated, treat dehydration.', 3, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (8, N'If number of stools, amount of blood in stools, fever, abdominal pain, or eating is the same or worse, REFER TO the hospital', 3, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (9, N'If the Child is less than 12 months old, REFER TO THE HOSPITAL ', 3, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (10, N'If the Child had measles within last 3 months, REFER TO THE HOSPITAL', 3, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (11, N'If fewer Stools, less fever, less abdoninal pain, and eating better, continue giving the same antibiotic until finished.', 3, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (12, N'If the Child has any General Danger sign of stiff neck, treat as VERY SEVERE FEBRILE DISEASE/MALARIA.', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (13, N'If the child has any cause of fever other than malaria, provide treatment.', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (14, N'If malaria is the only apparent cause of fever: Take a blood smear,---', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (15, N'Give Second line oral antimalarial without waiting for the result of the blood smear,---', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (16, N'Advice the mothe to return if fever persists,---', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (17, N'If fever persists after 2 days of treatment with second line oral antimalarial, refer with blood smear for reassessment,---', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (18, N'If fever has been stopped for 7 days, refer for assessment.---', 4, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (19, N'If pus is draining from the eye, ask the mother to describe how she treated the eye infection.', 5, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (20, N'If the treatment has been correct, refer to hospital.', 5, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (21, N'If treatment has not been correct, teach the mother the correct treatmeent.', 5, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (22, N'If pus is gone but redness,stop the treatment.', 5, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (23, N'Treatment for mouth ULCERS: If mouth ulcers are worse, or is very foul smell from the mouth, refer to the hospital, and----', 5, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (24, N'If the mouth ulcers are the same of better, continue using 0.25% gentian violet for a total of 5 days.', 5, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (25, N'If there is tender swelling behind the ear or high fever (38.5 degree Celcius or above), Refer URGENTLY to hospital.', 6, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (26, N'Acute ear infection: If ear pain or discharge persists, treat with 5 more days of the same antibiotic.Continue wicking to dry the ear. Follow up in 5 days.', 6, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (27, N'Chronic ear infection: Check that the mother is wicking the ear correctly and instilling the QUINOLONE otic drops (2 to 3 drops 3 times a day). Encourage her to continue treatment. See the child again in 5 days.', 6, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (28, N'If no ear pain or discharge, praise the mother for her careful treatment. If she has not yet finished the 5 days of antibiotic, tell her to use all of it before stopping. ', 6, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (29, N'Give Iron. Advice the mother to return after 14 days for the Iron.', 7, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (30, N'Continue giving Iron every day for 12 months with follow up every 14 days.', 7, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (31, N'If the child has any palmar pallor ater 2 months, refer for assessment.', 7, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (32, N'If thee child has any signs of bleeding, including skin petichiae or a positive torniqueet test, or signs of shock, or persistent abdomilan pain or persistent vomiting treat as SEVERE DENGUE HEMORRHAGIC FEVER.', 8, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (33, N'If the child has any other apparent cause of fever, provite treatment.', 8, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (34, N'If fever has been present for 7 days, refer for assessment.', 8, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (35, N'If there is no apparent cause of fever, advice the mother to return daily until the child has had no fever for at least 48 hours.', 8, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (36, N'Advice the mother to make sure that the child is given more fluids and is eating.', 8, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (37, N'Paracetamol for fever', 9, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (38, N'calamine lotion for itcheness', 9, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (39, N'Drink calamansi and Ginger extra', 10, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (40, N'Continue eating and drink a lot of beverage.', 10, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (42, N'Rub the Back With medecine.', 10, 1)
INSERT [dbo].[tbl_Treatment] ([TreatmentID], [TreatmentDescription], [IllnessID], [AdminID]) VALUES (43, N'Breath fresh air and not exposed to heat. ', 10, 1)
SET IDENTITY_INSERT [dbo].[tbl_Treatment] OFF
/****** Object:  View [dbo].[Viewm]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Viewm]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Viewm]
AS
SELECT     dbo.tbl_Drugs.DrugID, dbo.tbl_Drugs.DrugName, dbo.tbl_SideEffects.SideEffectsID AS Expr1, dbo.tbl_SideEffects.SideEffects
FROM         dbo.tbl_drugSideEffects INNER JOIN
                      dbo.tbl_Drugs ON dbo.tbl_drugSideEffects.DrugID = dbo.tbl_Drugs.DrugID INNER JOIN
                      dbo.tbl_SideEffects ON dbo.tbl_drugSideEffects.SideEffectsID = dbo.tbl_SideEffects.SideEffectsID
WHERE     (dbo.tbl_drugSideEffects.DrugID = 24)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Viewm', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[4] 2[16] 3) )"
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
         Begin Table = "tbl_drugSideEffects"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Drugs"
            Begin Extent = 
               Top = 6
               Left = 238
               Bottom = 125
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_SideEffects"
            Begin Extent = 
               Top = 6
               Left = 436
               Bottom = 95
               Right = 596
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
         Width = 1725
         Width = 1500
         Width = 8880
         Width = 7800
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Viewm'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Viewm', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Viewm'
GO
/****** Object:  View [dbo].[View_1]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.tbl_Drugs.DrugName, dbo.tbl_Dosage.Dosage, dbo.tbl_Dosage.DosageID, dbo.tbl_Drugs.DrugID
FROM         dbo.tbl_Dosage INNER JOIN
                      dbo.tbl_DosageDrugs ON dbo.tbl_Dosage.DosageID = dbo.tbl_DosageDrugs.DosageID INNER JOIN
                      dbo.tbl_Drugs ON dbo.tbl_DosageDrugs.DrugID = dbo.tbl_Drugs.DrugID
WHERE     (dbo.tbl_DosageDrugs.DrugID = 9)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[4] 2[14] 3) )"
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
         Begin Table = "tbl_Dosage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_DosageDrugs"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 110
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Drugs"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
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
         Width = 3435
         Width = 7575
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
/****** Object:  View [dbo].[View_2]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_2]
AS
SELECT     TOP (100) PERCENT DrugID, DrugName
FROM         dbo.tbl_Drugs
ORDER BY DrugName
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[6] 4[4] 2[17] 3) )"
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
         Left = -971
      End
      Begin Tables = 
         Begin Table = "tbl_Drugs"
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
         Width = 5175
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
/****** Object:  View [dbo].[View_3]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_3]
AS
SELECT     dbo.tbl_Drugs.DrugName, dbo.tbl_AvailableForms.AvailableForms
FROM         dbo.tbl_AvailableForms INNER JOIN
                      dbo.tbl_AvailableFormsDrugs ON dbo.tbl_AvailableForms.FormsID = dbo.tbl_AvailableFormsDrugs.FormsID INNER JOIN
                      dbo.tbl_Drugs ON dbo.tbl_AvailableFormsDrugs.DrugID = dbo.tbl_Drugs.DrugID
WHERE     (dbo.tbl_AvailableFormsDrugs.DrugID = 31)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[9] 2[10] 3) )"
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
         Begin Table = "tbl_AvailableForms"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_AvailableFormsDrugs"
            Begin Extent = 
               Top = 6
               Left = 237
               Bottom = 110
               Right = 397
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Drugs"
            Begin Extent = 
               Top = 6
               Left = 435
               Bottom = 125
               Right = 595
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
         Width = 3270
         Width = 3750
         Width = 3750
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
/****** Object:  View [dbo].[View_4]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_4]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_4]
AS
SELECT     TOP (100) PERCENT dbo.tbl_Drugs.DrugID, dbo.tbl_Drugs.DrugName, dbo.tbl_Drugs.GenericName, dbo.tbl_Drugs.BrandName, dbo.tbl_DrugClass.drugClass, 
                      dbo.tbl_DrugClass.DrugclassID
FROM         dbo.tbl_Drugs INNER JOIN
                      dbo.tbl_MedicineDrugClass ON dbo.tbl_Drugs.DrugID = dbo.tbl_MedicineDrugClass.DrugID INNER JOIN
                      dbo.tbl_DrugClass ON dbo.tbl_MedicineDrugClass.DrugclassID = dbo.tbl_DrugClass.DrugclassID
ORDER BY dbo.tbl_DrugClass.drugClass
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_4', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[6] 2[19] 3) )"
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
         Begin Table = "tbl_Drugs"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_DrugClass"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 123
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_MedicineDrugClass"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 110
               Right = 623
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
         Width = 2715
         Width = 1965
         Width = 2115
         Width = 3960
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
/****** Object:  View [dbo].[View_7]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_7]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_7]
AS
SELECT     TOP (100) PERCENT DrugName, GenericName, BrandName, DrugID
FROM         dbo.tbl_Drugs
ORDER BY DrugName
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_7', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[4] 2[4] 3) )"
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
         Top = -576
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Drugs"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_7'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_7', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_7'
GO
/****** Object:  View [dbo].[View_8]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_8]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_8]
AS
SELECT     dbo.tbl_Drugs.DrugName, dbo.tbl_Drugs.GenericName, dbo.tbl_Drugs.BrandName, dbo.tbl_Warnings.WarningsDescription
FROM         dbo.tbl_WaningsDrugs INNER JOIN
                      dbo.tbl_Warnings ON dbo.tbl_WaningsDrugs.WarningID = dbo.tbl_Warnings.WarningsID INNER JOIN
                      dbo.tbl_Drugs ON dbo.tbl_WaningsDrugs.DrugID = dbo.tbl_Drugs.DrugID
WHERE     (dbo.tbl_WaningsDrugs.DrugID = 21)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_8', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[4] 2[14] 3) )"
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
         Begin Table = "tbl_WaningsDrugs"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Warnings"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 95
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Drugs"
            Begin Extent = 
               Top = 6
               Left = 472
               Bottom = 125
               Right = 632
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
         Width = 1860
         Width = 3900
         Width = 2115
         Width = 6975
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_8'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_8', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_8'
GO
/****** Object:  View [dbo].[View1]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View1]
AS
SELECT     TOP (100) PERCENT dbo.tbl_Drugs.DrugID, dbo.tbl_Drugs.DrugName, dbo.tbl_Drugs.GenericName, dbo.tbl_Drugs.BrandName
FROM         dbo.tbl_Drugs INNER JOIN
                      dbo.tbl_DrugIllness ON dbo.tbl_Drugs.DrugID = dbo.tbl_DrugIllness.DrugID INNER JOIN
                      dbo.tbl_Illness ON dbo.tbl_DrugIllness.IllnessID = dbo.tbl_Illness.IllnessID
WHERE     (dbo.tbl_DrugIllness.IllnessID = 1) AND (dbo.tbl_Drugs.DrugName LIKE ''a%'')
ORDER BY dbo.tbl_Drugs.DrugName
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[8] 2[16] 3) )"
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
         Begin Table = "tbl_Drugs"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Illness"
            Begin Extent = 
               Top = 125
               Left = 264
               Bottom = 214
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_DrugIllness"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 110
               Right = 594
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
         Width = 2820
         Width = 3645
         Width = 3705
         Width = 2670
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
/****** Object:  View [dbo].[View_6]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_6]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_6]
AS
SELECT     SideEffects
FROM         dbo.tbl_SideEffects
WHERE     (SideEffects = ''•	Pain, swelling, tenderness, or redness at the injection site.'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_6', NULL,NULL))
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
         Begin Table = "tbl_SideEffects"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
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
         Width = 2160
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_6'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_6', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_6'
GO
/****** Object:  View [dbo].[View_5]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_5]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_5]
AS
SELECT     TOP (1) FormsID
FROM         dbo.tbl_AvailableForms
ORDER BY FormsID DESC
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_5', NULL,NULL))
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
         Begin Table = "tbl_AvailableForms"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 199
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
         Width = 2190
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_5'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_5', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_5'
GO
/****** Object:  View [dbo].[View2]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View2]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View2]
AS
SELECT        userlname, userfname, usermname, userage, useraddress, usercontactnumber, useremailadd, usercodename, userpassword
FROM            dbo.tbl_UserClient
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
         Begin Table = "tbl_UserClient"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 6
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View2'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View2', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View2'
GO
/****** Object:  View [dbo].[View3]    Script Date: 02/27/2012 07:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View3]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View3]
AS
SELECT        TOP (100) PERCENT userID, userlname + '', '' + userfname + ''   '' + usermname AS Members, usercodename, userpassword
FROM            dbo.tbl_UserClient
ORDER BY Members
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View3', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[4] 2[25] 3) )"
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
         Begin Table = "tbl_UserClient"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 6
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
         Width = 4035
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
/****** Object:  ForeignKey [FK_tbl_AvailableForms_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableForms_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableForms]'))
ALTER TABLE [dbo].[tbl_AvailableForms]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AvailableForms_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_AvailableForms] CHECK CONSTRAINT [FK_tbl_AvailableForms_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_AvailableFormsDrugs_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableFormsDrugs_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]'))
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs] CHECK CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_AvailableFormsDrugs_tbl_AvailableForms]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableFormsDrugs_tbl_AvailableForms]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]'))
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_AvailableForms] FOREIGN KEY([FormsID])
REFERENCES [dbo].[tbl_AvailableForms] ([FormsID])
GO
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs] CHECK CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_AvailableForms]
GO
/****** Object:  ForeignKey [FK_tbl_AvailableFormsDrugs_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_AvailableFormsDrugs_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_AvailableFormsDrugs]'))
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[tbl_Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[tbl_AvailableFormsDrugs] CHECK CONSTRAINT [FK_tbl_AvailableFormsDrugs_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_Dosage_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Dosage_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Dosage]'))
ALTER TABLE [dbo].[tbl_Dosage]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Dosage_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_Dosage] CHECK CONSTRAINT [FK_tbl_Dosage_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DosageDrugs_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DosageDrugs_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]'))
ALTER TABLE [dbo].[tbl_DosageDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DosageDrugs_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_DosageDrugs] CHECK CONSTRAINT [FK_tbl_DosageDrugs_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DosageDrugs_tbl_Dosage]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DosageDrugs_tbl_Dosage]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]'))
ALTER TABLE [dbo].[tbl_DosageDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DosageDrugs_tbl_Dosage] FOREIGN KEY([DosageID])
REFERENCES [dbo].[tbl_Dosage] ([DosageID])
GO
ALTER TABLE [dbo].[tbl_DosageDrugs] CHECK CONSTRAINT [FK_tbl_DosageDrugs_tbl_Dosage]
GO
/****** Object:  ForeignKey [FK_tbl_DosageDrugs_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DosageDrugs_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DosageDrugs]'))
ALTER TABLE [dbo].[tbl_DosageDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DosageDrugs_tbl_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[tbl_Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[tbl_DosageDrugs] CHECK CONSTRAINT [FK_tbl_DosageDrugs_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_DrugClass_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugClass_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugClass]'))
ALTER TABLE [dbo].[tbl_DrugClass]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DrugClass_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_DrugClass] CHECK CONSTRAINT [FK_tbl_DrugClass_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DrugIllness_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugIllness_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]'))
ALTER TABLE [dbo].[tbl_DrugIllness]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DrugIllness_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_DrugIllness] CHECK CONSTRAINT [FK_tbl_DrugIllness_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_DrugIllness_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugIllness_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]'))
ALTER TABLE [dbo].[tbl_DrugIllness]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DrugIllness_tbl_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[tbl_Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[tbl_DrugIllness] CHECK CONSTRAINT [FK_tbl_DrugIllness_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_DrugIllness_tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_DrugIllness_tbl_Illness]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_DrugIllness]'))
ALTER TABLE [dbo].[tbl_DrugIllness]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DrugIllness_tbl_Illness] FOREIGN KEY([IllnessID])
REFERENCES [dbo].[tbl_Illness] ([IllnessID])
GO
ALTER TABLE [dbo].[tbl_DrugIllness] CHECK CONSTRAINT [FK_tbl_DrugIllness_tbl_Illness]
GO
/****** Object:  ForeignKey [FK_tbl_Drugs_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Drugs_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Drugs]'))
ALTER TABLE [dbo].[tbl_Drugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Drugs_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_Drugs] CHECK CONSTRAINT [FK_tbl_Drugs_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_drugSideEffects_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_drugSideEffects_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]'))
ALTER TABLE [dbo].[tbl_drugSideEffects]  WITH CHECK ADD  CONSTRAINT [FK_tbl_drugSideEffects_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_drugSideEffects] CHECK CONSTRAINT [FK_tbl_drugSideEffects_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_drugSideEffects_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_drugSideEffects_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]'))
ALTER TABLE [dbo].[tbl_drugSideEffects]  WITH CHECK ADD  CONSTRAINT [FK_tbl_drugSideEffects_tbl_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[tbl_Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[tbl_drugSideEffects] CHECK CONSTRAINT [FK_tbl_drugSideEffects_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_drugSideEffects_tbl_SideEffects]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_drugSideEffects_tbl_SideEffects]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_drugSideEffects]'))
ALTER TABLE [dbo].[tbl_drugSideEffects]  WITH CHECK ADD  CONSTRAINT [FK_tbl_drugSideEffects_tbl_SideEffects] FOREIGN KEY([SideEffectsID])
REFERENCES [dbo].[tbl_SideEffects] ([SideEffectsID])
GO
ALTER TABLE [dbo].[tbl_drugSideEffects] CHECK CONSTRAINT [FK_tbl_drugSideEffects_tbl_SideEffects]
GO
/****** Object:  ForeignKey [FK_tbl_Illness_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Illness_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Illness]'))
ALTER TABLE [dbo].[tbl_Illness]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Illness_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_Illness] CHECK CONSTRAINT [FK_tbl_Illness_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_IllnessSymptoms_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_IllnessSymptoms_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]'))
ALTER TABLE [dbo].[tbl_IllnessSymptoms]  WITH CHECK ADD  CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_IllnessSymptoms] CHECK CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_IllnessSymptoms_tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_IllnessSymptoms_tbl_Illness]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]'))
ALTER TABLE [dbo].[tbl_IllnessSymptoms]  WITH CHECK ADD  CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Illness] FOREIGN KEY([IllnessID])
REFERENCES [dbo].[tbl_Illness] ([IllnessID])
GO
ALTER TABLE [dbo].[tbl_IllnessSymptoms] CHECK CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Illness]
GO
/****** Object:  ForeignKey [FK_tbl_IllnessSymptoms_tbl_Symptoms]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_IllnessSymptoms_tbl_Symptoms]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_IllnessSymptoms]'))
ALTER TABLE [dbo].[tbl_IllnessSymptoms]  WITH CHECK ADD  CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Symptoms] FOREIGN KEY([SymptomsID])
REFERENCES [dbo].[tbl_Symptoms] ([SymptomsID])
GO
ALTER TABLE [dbo].[tbl_IllnessSymptoms] CHECK CONSTRAINT [FK_tbl_IllnessSymptoms_tbl_Symptoms]
GO
/****** Object:  ForeignKey [FK_tbl_MedicineDrugClass_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_MedicineDrugClass_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]'))
ALTER TABLE [dbo].[tbl_MedicineDrugClass]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_MedicineDrugClass] CHECK CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_MedicineDrugClass_tbl_DrugClass]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_MedicineDrugClass_tbl_DrugClass]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]'))
ALTER TABLE [dbo].[tbl_MedicineDrugClass]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_DrugClass] FOREIGN KEY([DrugclassID])
REFERENCES [dbo].[tbl_DrugClass] ([DrugclassID])
GO
ALTER TABLE [dbo].[tbl_MedicineDrugClass] CHECK CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_DrugClass]
GO
/****** Object:  ForeignKey [FK_tbl_MedicineDrugClass_tbl_Drugs]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_MedicineDrugClass_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_MedicineDrugClass]'))
ALTER TABLE [dbo].[tbl_MedicineDrugClass]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[tbl_Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[tbl_MedicineDrugClass] CHECK CONSTRAINT [FK_tbl_MedicineDrugClass_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_SideEffects_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_SideEffects_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_SideEffects]'))
ALTER TABLE [dbo].[tbl_SideEffects]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SideEffects_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_SideEffects] CHECK CONSTRAINT [FK_tbl_SideEffects_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_Symptoms_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Symptoms_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Symptoms]'))
ALTER TABLE [dbo].[tbl_Symptoms]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Symptoms_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_Symptoms] CHECK CONSTRAINT [FK_tbl_Symptoms_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_Treatment_tbl_Administrator]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Treatment_tbl_Administrator]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Treatment]'))
ALTER TABLE [dbo].[tbl_Treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Treatment_tbl_Administrator] FOREIGN KEY([AdminID])
REFERENCES [dbo].[tbl_Administrator] ([AdminID])
GO
ALTER TABLE [dbo].[tbl_Treatment] CHECK CONSTRAINT [FK_tbl_Treatment_tbl_Administrator]
GO
/****** Object:  ForeignKey [FK_tbl_Treatment_tbl_Illness]    Script Date: 02/27/2012 07:20:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_Treatment_tbl_Illness]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_Treatment]'))
ALTER TABLE [dbo].[tbl_Treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Treatment_tbl_Illness] FOREIGN KEY([IllnessID])
REFERENCES [dbo].[tbl_Illness] ([IllnessID])
GO
ALTER TABLE [dbo].[tbl_Treatment] CHECK CONSTRAINT [FK_tbl_Treatment_tbl_Illness]
GO
/****** Object:  ForeignKey [FK_tbl_WaningsDrugs_tbl_Drugs]    Script Date: 02/27/2012 07:20:47 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_WaningsDrugs_tbl_Drugs]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_WaningsDrugs]'))
ALTER TABLE [dbo].[tbl_WaningsDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_WaningsDrugs_tbl_Drugs] FOREIGN KEY([DrugID])
REFERENCES [dbo].[tbl_Drugs] ([DrugID])
GO
ALTER TABLE [dbo].[tbl_WaningsDrugs] CHECK CONSTRAINT [FK_tbl_WaningsDrugs_tbl_Drugs]
GO
/****** Object:  ForeignKey [FK_tbl_WaningsDrugs_tbl_Warnings]    Script Date: 02/27/2012 07:20:47 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_WaningsDrugs_tbl_Warnings]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_WaningsDrugs]'))
ALTER TABLE [dbo].[tbl_WaningsDrugs]  WITH CHECK ADD  CONSTRAINT [FK_tbl_WaningsDrugs_tbl_Warnings] FOREIGN KEY([WarningID])
REFERENCES [dbo].[tbl_Warnings] ([WarningsID])
GO
ALTER TABLE [dbo].[tbl_WaningsDrugs] CHECK CONSTRAINT [FK_tbl_WaningsDrugs_tbl_Warnings]
GO
