<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:directive.page import="entity.BookOrder"/>
<jsp:directive.page import="entity.UserInfo"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'processOrder.jsp' starting page</title>
  </head>
  
  <body>
    <%
    	//BookOrder bookOrder=new BookOrder();
    	//bookOrder.setUserName(((UserInfo)session.getAttribute("userInfo")).getLoginName());
     %>
     <jsp:useBean id="bookOrder" class="entity.BookOrder" scope="request" />
     <jsp:setProperty name="bookOrder" property="userName" param="username"/>
     <jsp:setProperty name="bookOrder" property="zipcCode" param="zipcode"/>
     <jsp:setProperty name="bookOrder" property="phone" param="phone"/>
     <jsp:setProperty name="bookOrder" property="creditCard" param="creditcard"/>
     <jsp:setProperty name="bookOrder" property="total" value="<%=((Double)session.getAttribute("total")).doubleValue() %>"/>
     
     <jsp:useBean id="orderOperation" class="dao.OrderOperation" scope="request"/>
     <jsp:setProperty name="orderOperation" property="bookOrder" value="<%=(BookOrder)request.getAttribute("bookOrder") %>"/>
  </body>
</html>
