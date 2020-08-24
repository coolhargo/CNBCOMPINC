<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
	
	System.out.println("\n\n Session has Expired ... need to relogin");
	
	
	RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
	view.forward(request, response);
}



%>
<head>
<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<title>Logout - ADMINISTRATOR CONSOLE</title>

<!--[if IE 7]>
		<style>
			#navigation ul {
			padding-left:0;
			margin-left:-2px;	 
			}
		</style>
	<![endif]-->

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?14' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style_admin2.css?1319208271' title='wsite-theme-css' />
<style type='text/css'>
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-description, .blog-sidebar div.paragraph, .blog-sidebar p, .wsite-form-field label, .wsite-form-field label {}
#wsite-content h2, #wsite-content .product-title, .blog-sidebar h2{}
#wsite-title{}
</style>
<script type='text/javascript'><!--
var STATIC_BASE = 'http://cdn1.editmysite.com/';
var STYLE_PREFIX = 'wsite';
//-->
</script>
<script type='text/javascript' src='http://cdn1.editmysite.com/libraries/prototype/1.7-custom/prototype.min.js'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/libraries/scriptaculous/1.9.0-custom/effects.min.js'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/images/common/utilities.js?3'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/images/common/lightbox202.js?9'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/libraries/flyout_menus.js?13'></script>
<script type='text/javascript'><!--
var IS_ARCHIVE=1;
function initFlyouts(){initPublishedFlyoutMenus([{"id":"405001969691813212","title":"Admin Home","url":"index.html"},{"id":"146674875957660501","title":"Client Details","url":"candidate-details.html"},{"id":"970458511180428576","title":"Company Details","url":"company-details.html"},{"id":"596971022672504363","title":"Change Password","url":"change-password.html"},{"id":"143461400384755254","title":"Logout","url":"logout.html"}],'143461400384755254',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-logout'>
<div id="wrapper">
		<div id="contents">
        <div id="navigation"><ul><li id='pg970458511180428576'><a href='admin-console.jsp'>Admin Home</a></li><li id='pg146674875957660501'><a href='candidate-details.jsp'>Client Details</a></li><li id='pg970458511180428576'><a href='company-details.jsp'>Company Details</a></li><li id='pg596971022672504363'><a href='change-password.jsp'>Change Password</a></li><li id='active'><a href='logout.jsp'>Logout</a></li></ul></div>
			<div id="header">
				<div id="sitename"><span class='wsite-logo'><table style='height:148px'><tr><td><a href='admin-console.jsp'><span id="wsite-title">ADMINISTRATOR CONSOLE</span></a></td></tr></table></span></div>
			</div>
			<div id="main"><div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<div  class="paragraph editable-text" style=" text-align: left; "><br /><span></span><br /><span></span><br /><span></span><br /><span></span>Log out to Main Home from here .. <br /><span></span><br /><span></span><br /><span></span><br /><span></span></div>

<div ><div class="wsite-image-border-none " style="padding-top:15px;padding-bottom:15px;margin-left:0;margin-right:0;text-align:center">

<!-- changed the index.jsp ref to sign_out.jsp -->

<p><a href='sign_out.jsp'>
  <img src="uploads/9/3/7/5/9375453/6482189.png?209" alt="Picture" style="width:auto;max-width:100%" />
  </a></p>
<p>&nbsp;</p>
<p>&nbsp; </p>
<div style="display:block;font-size:90%"></div>
</div></div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">&nbsp;Copyright &copy; 2010-2011 CNB Computers Inc.&nbsp; - All rights reserved </div>

</div>
</div>
</div>
		
			</div>
		</div>
	</div>

</body>
</html>
