<%@ Control Language="C#" AutoEventWireup="true" CodeFile="exploremenu.ascx.cs" Inherits="exploremenu" %>
<script type="text/javascript" src="jquery.js"> 
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $('.art-menu li').hover(
function () {
    //show its submenu
    $('ul', this).slideDown(600);
},
function () {
    //hide its submenu
    $('ul', this).slideUp(600);
}
);
    });
</script>
<ul class="art-menu">
    <li><a href="Default.aspx" ><span class="l"></span><span class="r"></span><span class="t">Home</span></a></li>
    <li><a href="Aboutus.aspx" ><span class="l"></span><span class="r"></span><span class="t">About</span></a></li>
    <li><a href="Contact.aspx" ><span class="l"></span><span class="r"></span><span class="t">Contact us</span></a></li>
    <li><a href="#" class=" active"><span class="l"></span><span class="r"></span><span class="t">Explore</span></a>
        <ul>
		    <li><a href="AllDrugs.aspx" >Drugs</a></li>
		    <li><a href="AllDrugClasses.aspx" >Drug Classes</a></li>
		    <li><a href="BIOGRAPHICAL.aspx" >Researchers</a></li>
	    </ul>
    </li>
</ul>
