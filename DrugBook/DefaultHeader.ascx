<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultHeader.ascx.cs" Inherits="DefaultHeader" %>

<script type="text/javascript" src="swfobject.js"></script>
<script type="text/javascript">
    jQuery((function (swf) {
        return function () {
            swf.switchOffAutoHideShow();
            swf.registerObject("art-flash-object", "9.0.0", "expressInstall.swf");
        }
    })(swfobject));
</script>
<div id="art-flash-area">
<div id="art-flash-container">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1076" height="200" id="art-flash-object">
	<param name="movie" value="container.swf" />
	<param name="quality" value="high" />
	<param name="scale" value="default" />
	<param name="wmode" value="transparent" />
	<param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.30&amp;framerate1=24&amp;loop=true&amp;wmode=transparent&amp;clip=images/flash.swf&amp;radius=5&amp;clipx=0&amp;clipy=-34&amp;initalclipw=900&amp;initalcliph=225&amp;clipw=1076&amp;cliph=269&amp;width=1076&amp;height=200&amp;textblock_width=0&amp;textblock_align=no&amp;hasTopCorners=true&amp;hasBottomCorners=false" />
    <param name="swfliveconnect" value="true" />
	<!--[if !IE]>-->
	<object type="application/x-shockwave-flash" data="container.swf" width="1076" height="200">
	    <param name="quality" value="high" />
	    <param name="scale" value="default" />
	    <param name="wmode" value="transparent" />
    	<param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.30&amp;framerate1=24&amp;loop=true&amp;wmode=transparent&amp;clip=images/flash.swf&amp;radius=5&amp;clipx=0&amp;clipy=-34&amp;initalclipw=900&amp;initalcliph=225&amp;clipw=1076&amp;cliph=269&amp;width=1076&amp;height=200&amp;textblock_width=0&amp;textblock_align=no&amp;hasTopCorners=true&amp;hasBottomCorners=false" />
        <param name="swfliveconnect" value="true" />
	<!--<![endif]-->
		<div class="art-flash-alt"><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></div>
	<!--[if !IE]>-->
	</object>
	<!--<![endif]-->
</object>
</div>
</div>
<div class="art-Logo">
    <h1 id="name-text" class="art-Logo-name"><a href="www.drugbook.somee.com">Electronic Drug Guide Book</a></h1>
    <div id="slogan-text" class="art-Logo-text">www.drugbook.somee.com</div>
</div>
