﻿<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="AllDrugs.aspx.cs" Inherits="AllDrugs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="exploremenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Drugs A-Z||
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



<artisteer:Article ID="Article1"  Caption="Welcome - Drug guide book(List of all drugs a-z)" runat="server"><ContentTemplate>
    
    
    <div id="vlightbox1">
	<a class="vlightbox1" href="data/images1/ilace.jpg" title="Drugs">
    <img src="data/thumbnails1/ilace.jpg" alt="Drugs" style="float:left;"/>
    </a>
	</div>
    <p>Drug abuse:
    <a href="javascript:void(0)" title="link"></a>, <a class="visited" href="javascript:void(0)" title="visited link"></a>, 
     <a class="hover" href="javascript:void(0)" title="hovered link"></a>
    Drug abuse is a serious public health problem that affects almost every community and family in some way. 
    Each year drug abuse results in around 4 million serious 
    illnesses or injuries among people in the Philippines.</p>

    <p>Concern beliefs in medicines are patients’ anxieties about the harmful effects of a
specific prescribed medication. Three papers examined the importance of concern beliefs
in medicine, specifically its relationship to patient outcomes such as self-reported adverse
drug events (ADEs) and symptom attribution, and the factors that might drive a change in
concern beliefs over time. For the first and second paper, a cross-sectional internet survey
of Medicare enrollees who were English speakers, 65 years and older and enrolled in the
Medicare Part D program was done. In the third paper, a longitudinal internet survey of</p>

<p>
the same sample was done before Medicare Part D in 2005 and after Medicare Part D in
2007, and adults 40 years and older with physical limitations were interviewed using
telephone. Multiple logistic regressions showed that having stronger concern beliefs in
medicine and more symptoms was related to self-reported ADE, rather than using an
inappropriate medicine or the number of inappropriate medicines used.
</p>

    <p>
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
    		<a class="art-button" href="javascript:void(0)">Read more...</a>
    	</span>
    </p>
    </ContentTemplate></artisteer:Article>


    <artisteer:Article ID="Article2" Caption="Drugz from A-Z:" runat="server"><ContentTemplate>
    <p>Adverse drug reactions can be from multiple
causes including a drug interacting with a food, another
drug, or a nutritional supplement. In addition, drugs
may bring out illnesses that have been hidden or cause
side effects that can cause disability. A very common
cause of adverse drug effects is misuse of the
medication by the person for whom it was prescribed.</p>
    <p><sup></sup><sub></sub><a href="#" title="test link"></a>. 
    	Drug Details: <cite>cite</cite>. 
    	This article contains a list of common drugs used for children and adults alphabetically. 
        Each link will take you to an article with more information about that drug. </p>
        
        </ContentTemplate></artisteer:Article>

        <div class="contents-margin">
       <hr />
            <%--<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="TextBox1" WatermarkText="Search drug name.." WatermarkCssClass="watermarked">
            </asp:TextBoxWatermarkExtender>--%>
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
                    
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" Width="645px" 
                            DataKeyNames="DrugID" onrowcommand="GridView5_RowCommand" 
                            ShowFooter="True" AllowPaging="True" 
                            onpageindexchanging="GridView5_PageIndexChanging" PageSize="30">
                    <Columns>
                        <asp:BoundField DataField="DrugID" HeaderText="Code" Visible="False" />
                        <asp:ButtonField DataTextField="DrugName" HeaderText="Drug Name" 
                            CommandName="Select">
                        <ItemStyle Font-Bold="True" ForeColor="White" />
                        </asp:ButtonField>
                        <asp:BoundField DataField="GenericName" HeaderText="GenericName" >
                        <ItemStyle ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BrandName" HeaderText="BrandName" >
                        <ItemStyle ForeColor="White" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#003300" />
                    <HeaderStyle BackColor="#003300" 
                        HorizontalAlign="Left" VerticalAlign="Top" />
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
