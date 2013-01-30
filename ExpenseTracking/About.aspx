<%@ Page Title="" Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

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

<artisteer:Article ID="Article1" Caption="Welcome to www.testexpense-tracking.com>> About" runat="server"><ContentTemplate>
    
    &nbsp;<p>
    	<span class="art-button-wrapper">
    		<span class="l"> </span>
    		<span class="r"> </span>
            
    		<a class="art-button" href="javascript:void(0)">Description</a>
    	
    	</span>
    </p>
    <hr />
    
<br />
<p>Company Co.</p><br />
      University of Southern Mindanao<br />
      <p> 
      <p>General Description</p><br />

          <p>
          The purpose of the project is to develop an easy to use expense tracking system. Users can
register in the system, put down their expenses categorized by tags, and get some statistics about their 
spending. 
          </p>
          <br />
          <br />
          Phone: +639073670490<br /> Fax: (123) 456-7890 <br /> Contact Person: Jake V. Duldulao
          </div>
         <hr />
          <table class="table" width="100%">
              <tr>
                  <td valign="top" width="33%">
                      <div class="art-Block">
                          <div class="art-Block-body">
                              <div class="art-BlockHeader">
                                  <div class="l">
                                  </div>
                                  <div class="r">
                                  </div>
                                  <div class="t">
                                      <center>
                                          Expenses</center>
                                  </div>
                              </div>
                              <div class="art-BlockContent">
                                  <div class="art-PostContent">
                                      <img src="images/01.png" width="55px" height="55px" alt="an image" style="margin: 0 auto; display: block; border: 0" />
                                      <p>
                                          A cost incured. The cost incured in doing a job etc. Reimburcement fo these; the 
                                          spending of money, a thing on which money is spent. &quot;At the expense of&quot; - so as 
                                          to cause loss or damage or discrediit to expense account, to record of an 
                                          individual&#39;s expenses.</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </td>
                  <td valign="top" width="33%">
                      <div class="art-Block">
                          <div class="art-Block-body">
                              <div class="art-BlockHeader">
                                  <div class="l">
                                  </div>
                                  <div class="r">
                                  </div>
                                  <div class="t">
                                      <center>
                                          Expense-Tracking System</center>
                                  </div>
                              </div>
                              <div class="art-BlockContent">
                                  <div class="art-PostContent">
                                      <img src="images/02.png" width="55px" height="55px" alt="an image" style="margin: 0 auto; display: block; border: 0" />
                                      <p>
                                          The records for expenses.A cost incured. The cost incured in doing a job etc. 
                                          Reimburcement fo these; the spending of money, a thing on which money is spent. 
                                          &quot;At the expense of&quot; - so as to cause loss or damage or discrediit to expense 
                                          account, to record of an individual&#39;s expenses.</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </td>
                  <td valign="top" width="33%">
                      <div class="art-Block">
                          <div class="art-Block-body">
                              <div class="art-BlockHeader">
                                  <div class="l">
                                  </div>
                                  <div class="r">
                                  </div>
                                  <div class="t">
                                      <center>
                                          Accounting</center>
                                  </div>
                              </div>
                              <div class="art-BlockContent">
                                  <div class="art-PostContent">
                                      <img src="images/03.png" width="55px" height="55px" alt="an image" style="margin: 0 auto; display: block; border: 0" />
                                      <p>
                                          Keeping or examining accounts; account ancy. Accountant: one who keeps or 
                                          examines business accounts. Account: a statement of money,goods,or services 
                                          receivved or expended.</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </td>
              </tr>
          </table>
          <p>
          </p>
          <p>
          </p>
          <p>
          </p>
          <p>
          </p>
    </p>
           </ContentTemplate></artisteer:Article>
        <hr />

</asp:Content>

