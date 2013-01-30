<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultSidebar1.ascx.cs" Inherits="Sidebar1" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>

<artisteer:Block ID="NewsletterBlock" Caption="Newsletter" runat="server"><ContentTemplate><div>
<input type="text" value="" name="email" id="s" style="width: 95%;" />
<span class="art-button-wrapper">
	<span class="l"> </span>
	<span class="r"> </span>
	<input class="art-button" type="submit" name="search" value="Subscribe" />
</span>

</div>
   </ContentTemplate></artisteer:Block><artisteer:Block ID="HighlightsBlock" Caption="Highlights [Daily News]" runat="server"><ContentTemplate><div>
                  <p><b>Landbank of the Phils.</b><br />
                  <b>4/18/2012</b>
                  <hr />
                  A cost incured. The cost incured in doing a job etc. 
                  Reimburcement fo these; the spending of money,
                   a thing on which money is spent. 
                   "At the expense of" - so as to cause loss 
                   or damage or discrediit to expense account, 
                   to record of an individual's expenses.<br />
                  </p>
                  <hr />
                  <p><b>Currencies(Updates) 1 Dollar</b><br />
                  <b>4/18/2012</b><br />
                  Dollar-Peso: P 47.5
                  <br />
                  Cannadian Dollar-Peso: P 40.5
                  <br />
                  Yen-Peso: P 37.5
                  <br />
                  Derhams-Peso: P 38.5
                  <br />
                  Currency[description]-Peso: P value
                  <br />
                
                  <br />
                  </p>
                  </div>
   </ContentTemplate></artisteer:Block><artisteer:Block ID="ContactInformationBlock" Caption="Contact Info" runat="server"><ContentTemplate><div>
      <img src="images/contact.jpg" alt="an image" style="margin: 0 auto;display:block;width:95%" />
<br />
<b>Company Co.</b><br />
      University of Southern Mindanao<br /> Email: <a href="mailto:info@company.com">
      duldulaojakes@gmail.com</a><br />
      <br />
      Phone: +639073670490<br />
      Fax: (xxx) xxx-xxxx
</div>
   </ContentTemplate></artisteer:Block>
