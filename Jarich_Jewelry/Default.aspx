<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Welcome to Jarich's Jewelry Shop!..
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

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
<script type="text/javascript" src="prototype.js"></script>
<script type="text/javascript" src="scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="lightbox.js"></script>
</head>
<artisteer:Article ID="Article1" Caption="Welcome to Jarich's Jewelry Shop" runat="server"><ContentTemplate>
   <p>Jewelry for men has largely consisted of expensive watches or rings. rarely has a guy considered wearing a pendant. If the guy wears a pendant that is manly enough, it actually can make him look really good. 
    Jarich has designed some really amazing and manly jewelry which come with stainless steel or titanium.
    </p>
    
    <p>
    	<span class="art-button-wrapper">
    		<span class="art-button-l"> </span>
    		<span class="art-button-r"> </span>

            <asp:Panel ID="PanelRegistration" runat="server">
                <a class="art-button" href="IndexRegister.aspx">Click here To Register!</a>
            </asp:Panel>
            <asp:Panel ID="PanelLoginStatus" runat="server">
                <a class="art-button" href="javascript:void(0)">You are Logged In</a>
            </asp:Panel>
    		


    	</span>
        <p>
        </p>
        <div class="cleared">
        </div>
        <div class="art-content-layout overview-table">
            <div class="art-content-layout-row">
                <div class="art-layout-cell">
                    <div class="overview-table-inner">
                        <h4>
                            MEN&#39;S Collections</h4>
                        <a href="Client-Men-Collection-Products-Jewelry-Main.aspx">
                        <img src="images/MenCollection.jpg"  alt="an image" class="image" />
                        </a>
                        <p>
                        </p>
                    </div>
                </div>
                <!-- end cell -->
                <div class="art-layout-cell">
                    <div class="overview-table-inner">
                        <h4>
                            WOMEN&#39S; Collections</h4>
                        <a href="Client-Women-Collection-Products-Jewelry-Main.aspx">
                        <img src="images/WomenCollection.jpg"  alt="an image" class="image" />
                        </a>
                        <p>
                        </p>
                    </div>
                </div>
                <!-- end cell -->
                <div class="art-layout-cell">
                    <div class="overview-table-inner">
                        <h4>
                            KIDS&#39 Collections</h4>
                        <a href="Client-children-Collection-Products-Jewelry-Main.aspx">
                        <img src="images/KidsCollection.jpg" alt="an image" class="image" />
                        </a>
                        <p>
                        </p>
                    </div>
                </div>
                <!-- end cell -->
            </div>
            <!-- end row -->
        </div>
        <!-- end table -->
    
   <br />
   <div>
      <hr />

    <asp:DataList ID="dlImages" runat="server" RepeatColumns="6" CellPadding="8">
<ItemTemplate>
<a id="imageLink" href='<%# Eval("ImageName","~/ImageStorage/{0}") %>' title='<%#Eval("Product_Name") %>' rel="lightbox[Brussels]" runat="server" >
<asp:Image ID="Image1" ImageUrl='<%# Bind("ImageName", "~/ImageStorage/{0}") %>' runat="server" Width="112" Height="84" />
</a> 
<table>
    <tr>
        <td>Price: </td>
        <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("Product_UpdatedPrice") %>'></asp:Label></td>
    </tr>
</table>
<hr />
</ItemTemplate>
<ItemStyle BorderColor="Brown" BorderStyle="dotted" BorderWidth="3px" HorizontalAlign="Center"
VerticalAlign="Bottom" />
</asp:DataList>
   </div>

 </ContentTemplate></artisteer:Article>



           <artisteer:Article ID="Article2" Caption="We Accept the following Credit Cards below:" runat="server"><ContentTemplate>
    <img src="images/preview.jpg" alt="an image" style="float:left;" />
    <img src="images/Credits.jpg" alt="an image" style="float:left;" />

 </ContentTemplate></artisteer:Article>

</asp:Content>
