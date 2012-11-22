﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DrugsSpecification.aspx.cs" Inherits="DrugsSpecification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dosage: Side Effects: Drug Class</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    function LoadImage(path, img) {
        imgPrev = document.images[img];
        imgPrev.src = path;
        }
</script>
    <style type="text/css">
        #fleUpload
        {
            width: 359px;
        }
        .Gridview
        {
            margin-right: 1px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
		
			<div id="logo">
				<h1> &nbsp;</h1>
                <p> &nbsp;</p>
                <p> &nbsp;</p>
			</div>		
<style type="text/css">

div#menu {
margin-left:200px;
position:relative;
top:10px;

}

</style>
<div id="nocs">
<div id="menu">
    <ul class="menu">


        <li><a href="Illness.aspx?" class="parent"><span>Home</span></a>
           
        </li>
        <li><a href="#" class="parent"><span>Product Info</span></a>
            <div><ul>
                <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                    <div><ul>
                        <li><a href="#"><span>Sub Item 1.1</span></a></li>
                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                    </ul></div>
                </li>
                <li><a href="#" class="parent"><span>Sub Item 2</span></a>
                    <div><ul>
                        <li><a href="#"><span>Sub Item 2.1</span></a></li>
                        <li><a href="#"><span>Sub Item 2.2</span></a></li>
                    </ul></div>
                </li>
                <li><a href="#"><span>Sub Item 3</span></a></li>
                <li><a href="#"><span>Sub Item 4</span></a></li>
                <li><a href="#"><span>Sub Item 5</span></a></li>
                <li><a href="#"><span>Sub Item 6</span></a></li>
                <li><a href="#"><span>Sub Item 7</span></a></li>
            </ul></div>
        </li>
        <li><a href="AllDrugs.aspx?"><span>Drugs</span></a></li>
        <li class="last"><a href="#"><span>Contacts</span></a></li>
    </ul>
</div>
</div>
</div>

		
	<div id="wrapper">
		<div id="page">
		<div id="page-bg">
			<div id="sidebar1" class="sidebar">
				<ul>
					
					<li>
					<h2>Other Diseases/Illness</h2>
					<br />
					<div id="side1">
						<ul>
							<hr id="hz"/>
							<li><a href="Diphtheria.aspx?">diphtheria</a></li><hr id="hz"/>
							<li><a href="Influenza.aspx?">Influenza</a></li><hr id="hz"/>
							<li><a href="HookWorm.aspx?">hookworm</a></li><hr id="hz"/>
							<li><a href="Meningitis.aspx?">meningitis</a></li><hr id="hz"/>
							<li><a href="Mumps.aspx?">mumps</a></li><hr id="hz"/>
							<li><a href="Ringworm.aspx?">ringworm</a></li><hr id="hz"/>
							<li><a href="Trush.aspx?">thrush</a></li><hr id="hz"/>
							<li><a href="Tubercolosis.aspx?">tubercolosis</a></li><hr id="hz"/>
							<li><a href="Tetanus.aspx?">tetanus</a></li><hr id="hz"/>
							<li><a href="Poliomyelitis.aspx?">poliomyelitis</a></li><hr id="hz"/>
						</ul>
					</div>
					</li>
					
					
					
					<li>
					<br />
					    <div>
					            <table>
					                  <tr>
					                        <td><h2>Administrator:</h2></td>
					                  </tr>
					                  <tr>
					                        <td><asp:TextBox ID="txtadminusername" runat="server"></asp:TextBox>&lt;&lt;Admin</td>
					                  </tr>
					                  <tr>
					                        <td><asp:TextBox ID="txtadminpassword" runat="server" TextMode="Password"></asp:TextBox>
                                                &lt;&lt;Password</td>
					                  </tr>
					                  <tr>
					                        <td><asp:Button ID="LogInAdmin" runat="server" Text="Log-In" 
                                                    onclick="LogInAdmin_Click" /></td>
					                  </tr>
					                  <tr>
					                        <td><asp:Label ID="AdminStatus" runat="server" ForeColor="White"></asp:Label> 
                                            </td>
					                  </tr>
					            </table>
					    </div>
					<br />
					
					</div>
					</li>
					
					
					
				</ul>
			</div>
			
			
			
			
		<div id="content">
		 <div class="post">
				<div>
                    <asp:Label ID="Label3" runat="server" 
                        Text="Electronic Drug Guide for common illness among Children" Font-Bold="True" 
                        Font-Size="Large" Font-Underline="True" ForeColor="#006600"></asp:Label></div>
			</div>
		<hr />
		<div class="post">
				<h2 class="title"><a href="#">Objectives: it aims to--</a></h2>
				<div>
                    <asp:Label ID="Label4" runat="server" Text="Duldulao Jake V. : WEB Programmer" 
                        Font-Bold="True" Font-Underline="True" ForeColor="#003300"></asp:Label></div>
				<div class="entry">
					<p>•	Determine the effectiveness of Electronic Drug Guide Book for common illnesses among children.</p>
					<p>•	Develop an Electronic Drug Guide Book Web Application.</p>
				</div>
			</div>
			<hr />
		    <div class="post">
				<div>
                    <asp:Label ID="Label1" runat="server" Text="SIDE EFFECTS OF:" 
                        Font-Bold="True" Font-Size="Large" Font-Underline="True" 
                        ForeColor="#003300"></asp:Label></div>
			</div>
			<hr />
			<div>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" ForeColor="Green">----[Back]----</asp:LinkButton>
			</div>
			<div>
                        <asp:Label ID="lblViewMembers" runat="server" Font-Bold="True" 
                            Font-Size="X-Large" Font-Underline="True" ForeColor="#006600"></asp:Label>
                        <br />
                    </div>
             <div>
                <fieldset>
                    <div>
                        
                    <asp:Label ID="Label6" runat="server" Text="Drug Class:" 
                        Font-Bold="True" Font-Size="Large" Font-Underline="True" 
                        ForeColor="#003300"></asp:Label>
                        
                    </div>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                        ShowHeader="False" Width="638px">
                        <Columns>
                            <asp:BoundField DataField="drugClass" HeaderText="DrugClass:">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle Font-Bold="True" ForeColor="#003300" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    
                </fieldset>
             </div>
                     
             <hr />
                <div>
                    <asp:Label ID="Label2" runat="server" Text="These are the SIDE effects:" Font-Bold="True" 
                        Font-Size="Large" Font-Underline="True" ForeColor="#003300"></asp:Label></div>
             <hr />               
             <div>
			    <fieldset id = "threadconfig"></fieldset>
			</div>
			    <div>
			        <fieldset>
			            <div>
			                
			                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="635px">
                                <RowStyle BackColor="#E3EAEB" />
                                <Columns>
                                    <asp:BoundField DataField="SideEffects" HeaderText="Side Effects" />
                                </Columns>
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                                    HorizontalAlign="Left" VerticalAlign="Top" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
			                
			            </div>
			        </fieldset>
			    </div>
			 <div>
			    <fieldset id = "threadconfig"></fieldset>
			</div>
			
			<hr />
			    <div class="post">
				<asp:Label ID="Label5" runat="server" Text="Dosage:" 
                        Font-Bold="True" Font-Size="Large" Font-Underline="True" 
                        ForeColor="#003300"></asp:Label>
			</div>
			<hr />
			<div>
			    <fieldset id = "threadconfig"></fieldset>
			</div>
			
			<div>
			    <fieldset>
			        <div>
			                
			                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="635px">
                                <RowStyle BackColor="#E3EAEB" />
                                <Columns>
                                    <asp:BoundField DataField="Dosage" HeaderText="Dosage" >
                                        <ItemStyle ForeColor="#003300" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                                    HorizontalAlign="Left" VerticalAlign="Top" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
			                
			        </div>
			    </fieldset>
			</div>
			<div>
			    <fieldset id = "threadconfig"></fieldset>
			</div>
			<div class="post">
				</a>
			</div>
			
		</div>
		
		
		
		
		
			<div style="clear: both;">&nbsp;</div>
		</div>
		</div>
		
		
		
		
	</div>
	
	<div id="footer">
        <div id="footer-bg">
	            <p class="copyright">&copy;&nbsp;&nbsp;2009 All Rights Reserved &nbsp;&bull;&nbsp; Design by 	            <p class="link">&nbsp;</p>
        </div>
    </div>
    <div style="text-align: center; font-size: 0.75em;"></div>
    </form>
</body>
</html>