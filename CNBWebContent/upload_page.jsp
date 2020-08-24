<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<!--cache control statements-->

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<!--session management frwrding -->

<%
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
    
    System.out.println("\n\n Session has Expired ... need to relogin");
    
    
    RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
    view.forward(request, response);
}

%>


<title>Upload Sales Order Details - CLIENT CONSOLE</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?15' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319619124' title='wsite-theme-css' />
<style type='text/css'>
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
<script type='text/javascript'>
var IS_ARCHIVE=1;
function initFlyouts(){initPublishedFlyoutMenus([{"id":"217587437308530556","title":"Client Home","url":"index.html"},{"id":"843399331795564163","title":"Edit Profile","url":"edit-profile.html"},{"id":"837136730755946494","title":"Change Password","url":"change-password.html"},{"id":"637835727270969297","title":"Upload Company Details","url":"view-company-details.html"},{"id":"852155698204180283","title":"Examination","url":"examination.html"},{"id":"796793576388083129","title":"Logout","url":"logout.html"}],'637835727270969297',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>









<%@ page import="java.io.*,java.sql.*" %>

<%
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;

while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
System.out.println("saveFile=>>>>" + saveFile);
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
System.out.println("saveFile>>>>" + saveFile);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;

pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

FileOutputStream fileOut = new FileOutputStream(saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
%>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<br /><br /><br /><br />
<p align="center"> <font size="3">

File <% out.println(saveFile); %> has been uploaded and inserted into Database.

<br /><br /><br /><br />
<a href="view-company-details.jsp" >GO Back</a>


</font></p>

<%Connection con=null;
Statement pst=null;
String line = null;
String value=null;
try{
StringBuilder contents = new StringBuilder();
BufferedReader input = new BufferedReader(new FileReader(saveFile));

int ctr=0;
while (( line = input.readLine()) != null){
    
contents.append(line);
System.out.println("+++++++++LINE++++++++++++++++++++"+ctr);
ctr++;
}

value = contents.toString();
System.out.println("Value:"+value);



String driver = config.getServletContext().getInitParameter("mysql_driver");
String url = config.getServletContext().getInitParameter("mysql_url");
String dbname = config.getServletContext().getInitParameter("mysql_db");
String username = config.getServletContext().getInitParameter("mysql_username");
String password = config.getServletContext().getInitParameter("mysql_password");
Class.forName(driver).newInstance();
Connection conn = DriverManager.getConnection(url+dbname,username,password);
     Statement st = conn.createStatement();

//Class.forName("com.mysql.jdbc.Driver");
//con=DriverManager.getConnection ("jdbc:mysql://192.168.10.59/application?user=root&password=root");
//pst=con.createStatement();



int val = st.executeUpdate("insert into file(file_data) values('"+value+"')"); //inserting

System.out.println("rows affected :"+val);



/*
 
 1st save to WISH ORDER
 THEN UPDATE SALES ORDER TABLES
 
 There are 3 tables associated with this task. The SALES_ORDER_HEADER table which stores the header information for the order, SALES_ORDER_DETAIL table which stores the order line details of the order, and the ORDER_ADDRESS table which stores the address information.
 
A sales order (SALES_ORDER_HEADER) can have one or more order lines (SALES_ORDER_DETAIL).
A sales order (SALES_ORDER_HEADER) can only have 1 address (ORDER_ADDRESS).

For this task, you will need to create a Unique Order Number for the sales order.
For the SALES_ORDER_DETAIL Table, the NUMBER and RECNO (auto incremented number) fields combined create the UNIQUE record
 
 
 MAPPING FROM WISHORDER TABLE
 
 
 
 BV DATABASE SCHEMA             Values
SALES_ORDER_HEADER.NUMBER    UNIQUE ORDER NUMBER                            WISHORDERS.OrderID
SALES_ORDER_HEADER.ORD_DATE    FILE COLUMNS/Transaction Date                WISHORDERS.TRANSACTION Date
SALES_ORDER_HEADER.CUST_NAME    "WISH"                                      WISHORDERS.NAME
SALES_ORDER_HEADER.CUST_PO_NO    FILE COLUMNS/Order Id                      WISHORDERS.NAME
SALES_ORDER_HEADER.BVTOTAL    FILE COLUMNS/Total Cost
SALES_ORDER_HEADER.BVCURRCODE    FILE COLUMNS/Currency Code
 
SALES_ORDER_DETAIL.NUMBER    SALES_ORDER_HEADER.NUMBER
SALES_ORDER_DETAIL.RECNO    AUTO INCREMENTING NUMBER
SALES_ORDER_DETAIL.CODE    FILE COLUMNS/SKU
SALES_ORDER_DETAIL.ORDD_DESCRIPTION    FILE COLUMNS/Product
SALES_ORDER_DETAIL.BVUNITPRICE    FILE COLUMNS/Price (each)
SALES_ORDER_DETAIL.BVORDQTY    FILE COLUMNS/Quantity
 
 
ORDER_ADDRESS.CEV_NO    SALES_ORDER_HEADER.NUMBER
ORDER_ADDRESS.NAME    FILE COLUMNS/Shipping Address
ORDER_ADDRESS.BVCOCONTACT1NAME    FILE COLUMNS/Name
ORDER_ADDRESS.BVADDR1    FILE COLUMNS/Street Address 1
ORDER_ADDRESS.BVADDR2    FILE COLUMNS/Street Address 2
ORDER_ADDRESS.BVCITY    FILE COLUMNS/City
ORDER_ADDRESS.BVPROVSTATE    FILE COLUMNS/State
ORDER_ADDRESS.BVPOSTALCODE    FILE COLUMNS/Zipcode
ORDER_ADDRESS.BVCOUNTRYCODE    FILE COLUMNS/Country
ORDER_ADDRESS.BVADDRTELNO1    FILE COLUMNS/Phone Number
 
 
 
 
 CREATE TABLE WishOrders(

`Transaction Date` DATE NOT NULL,
`Order Id` VARCHAR(150) NOT NULL,
`Transaction ID` VARCHAR(150) NOT NULL,
`Order State` VARCHAR(50) NOT NULL,
`SKU`    VARCHAR(50) NOT NULL,
`Product`    VARCHAR(150) NOT NULL,
`Product ID` VARCHAR(50) NOT NULL,
`Product Link`    VARCHAR(150) NOT NULL,
`Product Image URL`    VARCHAR(250) NOT NULL,
`Size`    VARCHAR(150) NOT NULL,
`Color`    VARCHAR(150) NOT NULL,
`Currency Code`    VARCHAR(50) NOT NULL,
`Price (each)` VARCHAR(50) NOT NULL,
`Cost (each)` VARCHAR(50) NOT NULL,
`Shipping (each)`    VARCHAR(50) NOT NULL,
`Shipping Cost (each)` VARCHAR(50) NOT NULL,
`Quantity`    VARCHAR(50) NOT NULL,
`Total Cost`    VARCHAR(50) NOT NULL,
`SE Cashback Amount`    VARCHAR(50) NOT NULL,
`Available for Fulfillment Time`  VARCHAR(150) NOT NULL,
`Shipped on` VARCHAR(150) NOT NULL,
`Confirmed Delivery`    VARCHAR(150) NOT NULL,
`Date Shipping Carrier Confirmed Delivery` VARCHAR(150) NOT NULL,
`Provider`    VARCHAR(150) NOT NULL,
`Tracking`    VARCHAR(150) NOT NULL,
`Tracking Confirmed`    VARCHAR(150) NOT NULL,
`Tracking Confirmed Date`    VARCHAR(150) NOT NULL, #////
`Shipping Address`    VARCHAR(250) NOT NULL,
`Name` VARCHAR(250) NOT NULL,
`First Name`    VARCHAR(250) NOT NULL,
`Last Name` VARCHAR(250) NOT NULL,
`Street Address 1`    VARCHAR(250) NOT NULL,
`Street Address 2`    VARCHAR(250) NOT NULL,
`City` VARCHAR(250) NOT NULL,
`State`    VARCHAR(250) NOT NULL,
`Zipcode`    VARCHAR(250) NOT NULL,
`Country`    VARCHAR(250) NOT NULL,
`Last Updated`    VARCHAR(250) NOT NULL,
`Phone Number`    VARCHAR(250) NOT NULL,
`Country Code`    VARCHAR(250) NOT NULL,
`% Refund Responsibility`    VARCHAR(250) NOT NULL,
`Refund Responsibility Amount`    VARCHAR(250) NOT NULL,
`Refund Date`    VARCHAR(250) NOT NULL,
`Refund Reason`    VARCHAR(250) NOT NULL,
`Is Wish Express`    VARCHAR(250) NOT NULL,
`Wish Express Delivery Deadline`    VARCHAR(250) NOT NULL,
`Requires Delivery Confirmation`    VARCHAR(250) NOT NULL,
`Advanced Logistics`    VARCHAR(250) NOT NULL,
`Is Combined Order` VARCHAR(250) NOT NULL,
`PremiumCarrier Upgraded` VARCHAR(250) NOT NULL,
`Late Confirmed Fulfillment Fine Amount`    VARCHAR(250) NOT NULL,
`Customer Identity Number`    VARCHAR(250) NOT NULL,
`Final Product Price` VARCHAR(250) NOT NULL,
`Final Shipping Price`    VARCHAR(250) NOT NULL,
`Final Total Product Price`    VARCHAR(250) NOT NULL,
`Final Total Shipping Price`    VARCHAR(250) NOT NULL,
`Final Total Price`    VARCHAR(250) NOT NULL,
`Final Prices Currency`    VARCHAR(250) NOT NULL,
`Is Replacement Order`    VARCHAR(250) NOT NULL,
`Original Replacement Order ID`    VARCHAR(250) NOT NULL,
`Fulfillment By Store (FBS) Order` VARCHAR(250) NOT NULL
);
 
 
 */









}
catch(Exception e)
{}
}
%>



</body>
</html>
