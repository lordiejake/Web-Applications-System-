﻿<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AllDrugClasses.aspx.cs" Inherits="AllDrugClasses" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="exploremenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    All Drug Class||
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

<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(All Drug Classes from a-z)" runat="server"><ContentTemplate>
    
    
    <div id="vlightbox1">
	<a class="vlightbox1" href="data/images1/psychotropicdrugs.jpg" title="Drugs">
    <img src="data/thumbnails1/psychotropicdrugs.jpg" alt="Drugs" style="float:left;"/>
    </a>
	</div>
    <p>Drugs are substances other than foods intended
to affect the structure or function of the body. This
includes prescription drugs, over-the-counter medications,
alcohol, tobacco, marijuana, caffeine, vitamins,
herbal and other “natural” supplements. A common
mistake older adults make is to forget to disclose all of
the drugs taken on a regular or even an occasional
basis. Not telling your doctor about smoking or alcohol
consumption can make a prescription drug ineffective
or even dangerous</p>
<br />
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
    <p>
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
    		<a class="art-button" href="javascript:void(0)">Read more...</a>
    	</span>
    </p>
    </ContentTemplate></artisteer:Article>


    <artisteer:Article ID="Article2" Caption="Drug Classes from A-Z:" runat="server"><ContentTemplate><p>Drugs are powerful substances and if used
improperly, serious side effects can result.
Professionals such as physicians, pharmacists, nurses,
and dietitians can assist you with questions you may
have about your medicine.
Most effective medications have risks involved.
This means that medications should never be taken
without need. Reading the instructions provided by
your doctor, clinic,or pharmacist is very important to
proper drug use.</p>
        
        </ContentTemplate></artisteer:Article>

        <div class="contents-margin">
      <hr />
           
			    <div>
			        <fieldset class = "fieldwidth">
                        <table>
                            <tr>
                                
                                <td>
                                    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript">

    function pageLoad(sender, args) {
        var sm = Sys.WebForms.PageRequestManager.getInstance();
        if (!sm.get_isInAsyncPostBack()) {
            sm.add_beginRequest(onBeginRequest);
            sm.add_endRequest(onRequestDone);
        }
    }

    function onBeginRequest(sender, args) {
        var send = args.get_postBackElement().value;
        if (displayWait(send) == "yes") {
            $find('PleaseWaitPopup').show();
        }
    }

    function onRequestDone() {
        $find('PleaseWaitPopup').hide();
    }

    function displayWait(send) {
        switch (send) {
            case "Search":
                return ("yes");
                break;
            case "Save and Close":
                return ("yes");
                break;
            default:
                return ("no");
                break;
        }
    }
    </script>

<head>
    <title>mainpage</title>
</head>

<body>
  
        
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <div>
        <asp:UpdatePanel ID="PleaseWaitPanel"  runat="server" RenderMode="Inline">
        
                <ContentTemplate>
                <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
            TargetControlID="TextBox1" WatermarkCssClass="watermarked" 
            WatermarkText="Drugname..">
    </asp:TextBoxWatermarkExtender>
                    Search: 
                    <asp:TextBox ID="TextBox1" ValidationGroup="text3" runat="server"></asp:TextBox>
                    <asp:Button ID="Save" runat="server" Text="Search" ValidationGroup="text3" OnClick="Save_Click" />
                    
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" HorizontalAlign="Left" 
                            ShowFooter="True" Width="699px" onrowcommand="GridView2_RowCommand" 
                            DataKeyNames="DrugclassID" AllowPaging="True" 
                            onpageindexchanging="GridView2_PageIndexChanging" PageSize="40">
                            <RowStyle BorderStyle="None" />
                            <Columns>
                                <asp:ButtonField CommandName="Select" DataTextField="drugClass" 
                                    HeaderText="Drug Classes">
                                <ItemStyle Font-Bold="True" ForeColor="White" />
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="#003300" />
                            <HeaderStyle BackColor="#003300" BorderStyle="Groove" HorizontalAlign="Left" />
                        </asp:GridView>

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
        
        
     <asp:Panel ID="PleaseWaitMessagePanel" runat="server" ForeColor="black" CssClass="modalPopup" Height="75px"
            Width="100px">
            Please wait....<br />
            <img src="ajax-loader.gif" alt="Please wait" /></asp:Panel>
     <asp:Button ID="HiddenButton" runat="server" CssClass="hidden" Text="Hidden Button"
            ToolTip="Necessary for Modal Popup Extender" />
    <asp:ModalPopupExtender ID="PleaseWaitPopup" BehaviorID="PleaseWaitPopup"
            runat="server" TargetControlID="HiddenButton" PopupControlID="PleaseWaitMessagePanel"
            BackgroundCssClass="modalBackground">
    </asp:ModalPopupExtender>
</body>
</html>
                                </td>
                            </tr>
                        </table>
			        </fieldset>
			    </div>
			<div>
			    <fieldset>
			        <div>
			            
			        </div>
			    </fieldset>
			</div>

    	<p>
    		<span class="art-button-wrapper">
    			<span class="l"> </span>
    			<span class="r"> </span>
    			<a class="art-button" href="javascript:void(0)">Join&nbsp;Now!</a>
    		</span>
    	</p>
           </ContentTemplate></artisteer:Article>
</asp:Content>

