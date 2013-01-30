﻿<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Log In||
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <art:DefaultMenu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar1 ID="DefaultSidebar1Content" runat="server" />
</asp:Content>

<asp:Content ID="SheetContent" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>Photo generated by VisualLightBox.com</title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<meta name="keywords" content="Photo, VisualLightBox, LightBox, Photo Gallery, Online Picture Gallery, Photo Album Creator" />
		<meta name="description" content="Photo created with VisualLightBox, a free wizard program that helps you easily generate beautiful Lightbox-style web photo galleries" />
		<link rel="shortcut icon" href="favicon.ico" />
		
		<!-- Start VisualLightBox.com HEAD section -->
		<link rel="stylesheet" href="engine/css/vlightbox1.css" type="text/css" />
		<link rel="stylesheet" href="engine/css/visuallightbox.css" type="text/css" media="screen" />
<script src="engine/js/jquery.min.js" type="text/javascript"></script>
		<script src="engine/js/visuallightbox.js" type="text/javascript"></script>
		<!-- End VisualLightBox.com HEAD section -->
		
	</head>
	<body>
	
	<!-- Start VisualLightBox.com BODY section id=1 -->
	
    
	<script src="engine/js/vlbdata1.js" type="text/javascript"></script>
	<!-- End VisualLightBox.com BODY section -->
	
	</body>
</html>

<div class="contents-margin" style=" width:300px;">
<table>
    <tr>
     <td>
  
     <artisteer:Block ID="Block1" Caption="User Log In" runat="server">
        <ContentTemplate>
            <div class="contents-margin">
            <hr />
                <asp:Login ID="Login1" runat="server" 
                    onauthenticate="Login1_Authenticate" onloginerror="Login1_LoginError" 
                    style="margin-left: 0px" FailureText="Invalid username or password." 
                    Width="285px">
                    <FailureTextStyle ForeColor="White" />
                    <ValidatorTextStyle ForeColor="White" />
                </asp:Login>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Underline="True" ForeColor="White" onclick="LinkButton1_Click">Register[Sign Up]</asp:LinkButton>
                <hr />
            </div>
            </ContentTemplate>
   </artisteer:Block>
        
     </td>
     <td>
        
     </td>
    </tr>
</table>
</div>

 
<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(Login)" runat="server"><ContentTemplate>
    
     <div id="vlightbox1">
	<a class="vlightbox1" href="data/images1/medicines.jpg" title="Medicines">
    <img src="data/thumbnails1/medicines.jpg" alt="Jake Duldulao" style="float:left;"/>
    </a>
	</div>
    <p>Increasing numbers of medicines are available to
us every day and it is important to manage them correctly
if they are to be effective. An average, active
older adult is taking three to five medicines every day.
Studies show that older adults are often unaware of
why they take specific drugs, the name of the drugs
they take, possible side effects, or the dose for specific
medications. Having these simple pieces of information
on a wallet card and with you at all times could
save your life. Senior Information & Assistance has
cards that you can use.</p>
    <p>Drug abuse is a disorder that is characterized by a destructive pattern of using a substance that leads to significant problems or distress.
Drug addiction is a disease that is characterized by a destructive pattern of drug abuse that leads to significant problems involving tolerance to or withdrawal from the substance,
 as well as other problems use of the substance can cause for the sufferer.
Drug abuse and addiction are unfortunately quite common, affecting 7% and more than 2% of people at some point in their lives, respectively.
Dual diagnosis refers to the presence of both a drug-abuse or dependence issue in addition to a serious mental-health problem in an individual.
Virtually any substance whose ingestion can result in a euphoric ("high") feeling can be abused.
Inhalants like household cleaners are some of the most commonly abused substances.
While the specific physical and psychological effects of drug abuse and addiction tend to vary based on the particular substance involved,
 the general effects of abuse or addiction to any drug can be devastating.</p>
    <p>
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
    		<a class="art-button" href="javascript:void(0)">Read more...</a>
    	</span>
    </p>

    </ContentTemplate></artisteer:Article>
             

</asp:Content>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ScriptIncludePlaceHolder">
  <script type="text/javascript" src="<%= ResolveUrl("~/script.js") %>"></script>
    </asp:Content>

