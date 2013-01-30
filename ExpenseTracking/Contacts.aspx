<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
          

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Contacts--
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

<artisteer:Article ID="Article1" Caption="Welcome to www.testexpense-tracking.com>> Contacts" runat="server"><ContentTemplate>
    
    &nbsp;<p>
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
            
    		<a class="art-button" href="javascript:void(0)">Description</a>
    	
    	</span>
    </p>
    <hr />
    <artisteer:Block ID="ContactInformationBlock" Caption="Contact Info" runat="server"><ContentTemplate><div>
      <img src="images/contact.jpg" alt="an image" style="margin: left auto;display:block;width:40%" />
<br />
<b>Company Co.</b><br />
      University of Southern Mindanao<br /> Email: <a href="mailto:duldulaojakes@gmail.com">
      duldulaojakes@gmail.com</a><br />
      <br />
      Phone: +639073670490<br />
      Fax: (xxx) xxx-xxxx
</div>
   </ContentTemplate></artisteer:Block>
    <table class="table" width="100%">
    	<tr>
    		<td width="33%" valign="top">
    		<div class="art-Block">
    			<div class="art-Block-body">
    				<div class="art-BlockHeader">
              <div class="l"></div>
    				  <div class="r"></div>
    				  <div class="t"><center>Expenses</center></div>
    			  </div>
    				<div class="art-BlockContent">
    					<div class="art-PostContent">
    						<img src="images/01.png" width="55px" height="55px" alt="an image" style="margin: 0 auto; display: block; border: 0" />
    						<p>A cost incured. The cost incured in doing a job etc.
    						Reimburcement fo these; the spending of money, a thing on
    						which money is spent. "At the expense of" - so as to cause loss or 
                            damage or discrediit to expense account, to record of an individual's
                            expenses.</p>
    					</div>
    				</div>
    			</div>
    		</div>
    		</td>
    		<td width="33%" valign="top">
    		<div class="art-Block">
    			<div class="art-Block-body">
    				<div class="art-BlockHeader">
              <div class="l"></div>
    				  <div class="r"></div>
    				  <div class="t"><center>Expense-Tracking System</center></div>
    			  </div>
    				<div class="art-BlockContent">
    					<div class="art-PostContent">
    						<img src="images/02.png" width="55px" height="55px" alt="an image" style="margin: 0 auto; display: block; border: 0" />
                <p>The records for expenses.A cost incured. The cost incured in doing a job etc. 
                    Reimburcement fo these; the spending of money, a thing on which money is spent. 
                    &quot;At the expense of&quot; - so as to cause loss or damage or discrediit to expense 
                    account, to record of an individual&#39;s expenses.</p>
    					</div>
    				</div>
    			</div>
    		</div>
    		</td>
    		<td width="33%" valign="top">
    		<div class="art-Block">
    			<div class="art-Block-body">
            <div class="art-BlockHeader">
              <div class="l"></div>
    				  <div class="r"></div>
    				  <div class="t"><center>Accounting</center></div>
    			  </div>
    				<div class="art-BlockContent">
    					<div class="art-PostContent">
    						<img src="images/03.png" width="55px" height="55px" alt="an image" style="margin: 0 auto; display: block; border: 0" />
    						<p>Keeping or examining accounts; account ancy. 
    						Accountant: one who keeps or examines business accounts. 
    						Account: a statement of money,goods,or services receivved or expended.</p>
    					</div>
    				</div>
    			</div>
    		</div>
    		</td>
    	</tr>
    </table>
           </ContentTemplate></artisteer:Article>
        <hr />

</asp:Content>

