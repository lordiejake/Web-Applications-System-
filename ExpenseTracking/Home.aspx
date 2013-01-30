<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="LogoutMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<script runat="server">

    
</script>
<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Home..
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

<artisteer:Article ID="Article1" Caption="User's Expenses Tracking System" runat="server"></artisteer:Article>



<artisteer:Block ID="HighlightsBlock" Caption="User's Profile" runat="server"><ContentTemplate><div>
                
                  </div>
   </ContentTemplate></artisteer:Block>
    
    <div> 
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            Font-Size="Small">LinkButton</asp:LinkButton> </div>
        <hr />
        <br />
        <br />
        <fieldset></fieldset>
        <br />
        <div><asp:LinkButton ID="linkprofile" runat="server" onclick="linkprofile_Click" 
                Font-Size="Small">&gt;&gt;   [Edit Profile]</asp:LinkButton></div>
        <div><asp:LinkButton ID="linkexpenses" runat="server" onclick="linkexpenses_Click" 
                Font-Size="Small">&gt;&gt;  [Add Expenses]</asp:LinkButton></div>
        <div><asp:LinkButton ID="linkdelete" runat="server" onclick="linkdelete_Click" 
                Font-Size="Small">&gt;&gt;  [Edit Expenses Description]</asp:LinkButton></div>
                <div>
                    <asp:LinkButton ID="lnkdeleted" runat="server" Font-Size="Small" 
                        onclick="lnkdeleted_Click">&gt;&gt; [Delete Expenses]</asp:LinkButton></div>
                    <div>
                        <asp:LinkButton ID="lnkView" runat="server" Font-Size="Small" 
                            onclick="lnkView_Click">&gt;&gt; [View Reports]</asp:LinkButton>
    </div>
        <br />
        <fieldset></fieldset>

     
</asp:Content>



