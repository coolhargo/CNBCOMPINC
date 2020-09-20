<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>


<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<title>Company Registration - CNB Computers Inc.</title>

<!--[if IE 7]>
      <style>
      p {
        line-height:1.5;
        padding-bottom:12px;
      }
      h1 {
        font-size:20px;
        font-weight:bold;
        color:#333;
        padding-bottom:0;
      }
      h2 {
        font-size:14px;
        font-weight:bold;
        color:#333;
        padding-bottom:0
      }
    </style>
  <![endif]-->

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?15' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style.css?1319278360' title='wsite-theme-css' />
<style type='text/css'>
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-description, .blog-sidebar div.paragraph, .blog-sidebar p, .wsite-form-field label, .wsite-form-field label {}
#wsite-content h2, #wsite-content .product-title, .blog-sidebar h2{}
#wsite-title{font-family:Georgia !important;font-size:28px !important;}
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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"127291795384081010","title":"Home","url":"index.html"},{"id":"916005226383428698","title":"Login","url":"login.html"},{"id":"218932767564197161","title":"Client Registration","url":"client-registration.html"},{"id":"963802718424838957","title":"Company Registration","url":"company-registration.html"},{"id":"436242411310823612","title":"Contact Us","url":"contact-us.html"},{"id":"642540944578226134","title":"Discussion Forum","url":"discussion-forum.html"}],'963802718424838957',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-company-registration'>
<div id="wrapper">
    <div id="header">
        <div id="sitename"><span class='wsite-logo'><table style='height:70px'><tr><td><a href='index.jsp'><span id="wsite-title">CNB Computers Inc.<br /></span></a></td></tr></table></span></div>
    </div>
    <div id="content-wrapper">
      <div id="contents-body">
        <div id="navigation">
          <div id="nav-top"></div>
          <div id="navigation-links"><ul><li id='pg127291795384081010'><a href='index.jsp'>Home</a></li><li id='pg916005226383428698'><a href='login.jsp'>Login</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-624430280190446915'><a href='admin-home.html'><span class='wsite-menu-title'>Admin Home</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-290723617235183832'><a href='company-home.html'><span class='wsite-menu-title'>Company Home</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-552960577565783351'><a href='client-home.html'><span class='wsite-menu-title'>Client Home</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg218932767564197161'><a href='client-registration.jsp'>Client Registration</a></li><li id='active'><a href='company-registration.jsp'>Company Registration</a></li><li id='pg436242411310823612'><a href='contact-us.jsp'>Contact Us</a></li><li id='pg642540944578226134'><a href='discussion-forum.jsp'>Discussion Forum</a></li></ul></div>
          <div id="nav-bottom"></div>
        </div>
        <div class="wsite-header"></div>
        <div id="contents"><div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<div  class="paragraph editable-text" style=" text-align: left; ">
<br />
  <h2  style=" text-align: center; ">Please Enter the following details to register</h2>
</div>

  <form action="savecompanydata.jsp" method="post" name="form1" id="form1">
                        <table  cellpadding="0" width =85% border=0 cellpadding=3 cellspacing=0  >
                            <tr  width=100%>
                                <td colspan="2" > <div align="left" class="style4">
                                        <div align="center" class="style5">
                                          <p>&nbsp;</p>
                                          <p>Company Registration </p>
                                          <p>&nbsp;</p>
                                        </div>
                                </div></td>
                            </tr>
                            <tr  width=100%>
                                <td width="33%" ><div align="left"><font SIZE="2" COLOR="black" face =arial >Name</font></div></td>
                                <td width="67%" ><div align="left">
                                        <p>
                                          <input TYPE="text" NAME="comname" id="comname" size=30 maxlength=30>
                              </div></td>
                            </tr>
                            <tr >
                                <td ><div align="left">
                                  <p><font SIZE="2" COLOR="black" face =arial>Address</font></p>
</div></td>
                                <td ><div align="left">
                                        <p>
                                          <input NAME="comaddress" TYPE="text" id="comaddress" size=30 maxlength=50>
                                        </p>
                              </div></td>
                            </tr>
                            <tr >
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>Post</font></div></td>
                                <td ><div align="left">
                                        <p>
                                          <input NAME="compost" TYPE="text" id="compost" size=30  maxlength=50>
                                        </p>
                              </div></td>
                            </tr>
                            <tr >
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>Criteria</font></div></td>
                                <td ><div align="left">
                                        <p>
                                          <input NAME="comcriteria" TYPE="text" id="comcriteria" size=30  maxlength=50>
                                        </p>
                              </div></td>
                            </tr>
                            <tr  wdth =100%>
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>Username</font></div></td>
                              <td ><div align="left">
                                      <p>
                                          <input TYPE="text" NAME="comusername" id="comusername"size=30 maxlength=30 value=''>
                                </p>
                              </div></td>
                            </tr>
                            <tr  wdth =100%>
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>Password</font></div></td>
                              <td ><div align="left">
                                      <p>
                                          <input TYPE="password" NAME="compassword" id="compassword" size=32 maxlength=30 value=''>
                                </p>
                              </div></td>
                            </tr>
                            <tr  >
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>Email_id</font></div></td>
                                <td ><div align="left">
                                        <p>
                                          <input TYPE="text" NAME="comemail" id="comemail" size=30 maxlength=30 value=''>
                                        </p>
                              </div></td>
                            </tr>
                            <tr>
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>Contact No:</font></div></td>
                              <td ><div align="left">
                                      <p>
                                          <input TYPE="text" NAME="comcontact" id="comcontact" size=10 maxlength=30 >
                                        &nbsp; <font SIZE="2" COLOR="#CC0000" face =arial>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(STD-No.)</font></p>
                              </div></td>
                            </tr>
                            <tr  >
                                <td ><div align="left"><font SIZE="2" COLOR="black" face =arial>CutOff %</font></div></td>
                                <td ><div align="left">
                                        <p>
                                          <input TYPE="text" NAME="comcutoff" id="comcutoff" size=30 maxlength=30 value=''>
                                        </p>
                              </div></td>
                            </tr>
                            <tr>
                                <td height="51" colspan=2 ><div align="center"><br>
                                        <input TYPE="reset"> &nbsp;&nbsp;<input TYPE="submit" value="Submit" onclick="return valid()">
                                </div>                                 </td>
                            </tr>
                        </table>
                    </form>

<div >



  <p>&nbsp;</p>
</div>

<div  class="paragraph editable-text" style=" text-align: left; "><br /><br /><br /><br /><br /><br /><br /></div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">Copyright&nbsp;&copy;&nbsp;2010-2011 CNB Computers Inc. &nbsp;- All rights reserved &nbsp;<br /></div>

</div>
</div>
</div>
      </div>
      <div id="contents-bottom"></div>
    </div>
  </div>

</body>
</html>
