<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:directive.page import="entity.BookOrder"/>
<jsp:directive.page import="entity.UserInfo"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'processOrder.jsp' starting page</title>
  </head>
  
  <body>
  	<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
  	dataSource="jdbc:sqlserver://localhost:1433;DatabaseName=books" 
  	password="123456" user="sa" var="conn"/>
  	<sql:update dataSource="${conn}" var="order">
  		insert into bookorder(username, zipcode, phone, creditcard, total) values(?,?,?,?,?)
  		<sql:param value="${sessionScope.userInfo.loginName}"/>
  		<sql:param value="${parm.zipCode}"/>
  		<sql:param value="${parm.phone}"/>
  		<sql:param value="${parm.creditCard}"/>
  		<sql:param value="${sessionScope.total}"/>
  	</sql:update>
  </body>
</html>
