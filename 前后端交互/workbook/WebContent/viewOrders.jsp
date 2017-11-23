<%@ page language="java" session="true" pageEncoding="GBK"%>
<jsp:directive.page import="java.util.HashMap"/>
<jsp:directive.page import="java.util.Set"/>
<jsp:directive.page import="entity.CartItemBean"/>
<jsp:directive.page import="entity.BookBean"/>


<!-- viewCart.jsp -->

<%-- JSP page settings --%>     

<html xmlns = "http://www.w3.org/1999/xhtml">

<head>
   <title>Shopping Cart</title>

<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="images/main.css" type=text/css rel=stylesheet>
</head>

<body>



<CENTER>
<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff 
background=images/top1bg.jpg border=0>
  <TBODY>
  <TR>
    <TD width=778>&nbsp;</TD></TR></TBODY></TABLE>
<TABLE class=center height=100 cellSpacing=0 cellPadding=0 width=778 
bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD align=middle width=150><IMG 
      title="" height=100 
      src="images/logo.jpg" width=100 border=0></TD>
    <TD width=58>&nbsp;</TD>
    <TD vAlign=top width=110><IMG
      height=90 src="images/top1.jpg" width=70 border=0></TD>
    <TD vAlign=top width=110><IMG 
      height=90 src="images/top2.jpg" width=70 border=0></TD>
    <TD vAlign=top width=110><IMG 
       height=90 src="images/top3.jpg" width=70 
      border=0></TD>
    <TD vAlign=top width=110><IMG 
      height=90 src="images/top4.jpg" width=70 border=0></TD>
    <TD width=130>
     </TD></TR></TBODY></TABLE>

<TABLE class=center cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff 
border=0>
  <TBODY><TR>
    <TD style="FONT-SIZE: 1px" bgColor=#b0b0b0 colSpan=19 
  height=1></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 1px" bgColor=#dcdcdc height=3></TD></TR>
  <TR>
    <TD align=right background=images/bn01.jpg height=120>&nbsp;</TD>
  </TR></TBODY></TABLE>

<TABLE height=15 cellSpacing=0 cellPadding=0 width=778 border=0>
  <TBODY>
  <TR>
    <TD style="FONT-SIZE: 10px; LINE-HEIGHT: 10px" 
    background=../images/bnbg1.gif height=15></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff border=0 height="357">
  <TBODY>
  <TR>
    <TD vAlign=top width=168 height=400>
      <TABLE class=center height="100%" cellSpacing=0 cellPadding=0 width=168 
      bgColor=#ffffff background=images/leftbg.gif border=0>
        <TBODY>
       
        <TR>
          <TD class=lefttd vAlign=top align=middle><BR>
            </TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top align=middle width=610>
      <TABLE cellSpacing=0 cellPadding=0 width="98%" 
      background=/store./images/top01.gif border=0>
        <TBODY>
        <TR>
          <TD align=left height=25><IMG height=11 src="images/icon1.gif" 
            width=31>　购物车内商品：</TD></TR></TBODY></TABLE><BR>
      <TABLE style="TEXT-ALIGN: center" cellSpacing=0 cellPadding=0 width=590 
      border=0>
        <TBODY>


<!--   显示内容开始  -->



<%-- start scriptlet to display shopping cart contents --%>

<%-- end scriptlet for literal XHTML output --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"  %>

		<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
		  	dataSource="jdbc:sqlserver://localhost:1433;DatabaseName=books" 
		  	password="123456" user="sa" var="conn"/>
		  	<sql:query var="rs" dataSource="${conn}">
		  		select * from BookOrder order by orderId
		  	</sql:query>
   <table cellSpacing=0 cellPadding=0 width=590 border=1>
      <thead><tr align="center">
         <th>订单Id</th>
         <th>用户名</th>
         <th>邮编</th>
         <th>总计</th>
      </tr></thead>
      <c:forEach items="${rs.rows}" var="row">
      <tr>
      	<td>${row.orderId }</td>
      	<td>${row.username }</td>
      	<td>${row.zipcode }</td>
      	<td>${row.total }</td>
      </tr>
      </c:forEach>
   </table> 

<!--   显示内容结束  -->
				 </TBODY>
				 </TABLE>
      <BR></TD></TR></TBODY></TABLE>
<TABLE class=center cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD align=middle background=images/bk.gif height=50>
    </TD></TR></TBODY></TABLE>

</CENTER></BODY></HTML>

