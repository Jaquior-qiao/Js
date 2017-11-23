<%@ page language="java" import="dao.*,entity.*,java.util.*" pageEncoding="gbk"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理人员-管理</title>
		<link rel="stylesheet" type="text/css" href="left.files/style_admin.css">
</head>
<body>
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<form name="form1" action="showUserList.jsp" method="post">
			<tr>
				<td colspan="15" class="header">图书管理 
				</td>
			</tr>
			
			<tr>
				<td align="center" class="altbg1">
					<b>图书编号</b>
				</td>
				<td align="center" class="altbg1">
					<b>图书名称</b>
				</td>
				<td align="center" class="altbg1">
					<b>图书出版日期</b>
				</td>
				<td align="center" class="altbg1">
					<b>图书作者</b>
				</td>
				<td align="center" class="altbg1">
					<b>图书价格</b>
				</td>				
				<td align="center" class="altbg1">
					<b>修改</b>
				</td>
				<td align="center" class="altbg1">
					<b>删除</b>
				</td>
			</tr>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<jsp:useBean id="titlesBean" class="dao.TitlesBean" scope="request"/>
			<c:set var="titles" value="${titlesBean.titles}" scope="session"/>
			<c:forEach items="${sessionScope.titles}" var="bb" varStatus="status">
			
			<tr>
				<td rowspan="2" align="center" class="altbg2">
					${bb.isbn}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${bb.title}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${bb.copyright}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${bb.author}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${bb.price}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					<a href="bookUpdate.jsp?isbn=${bb.isbn}">修改</a>
				</td>				
				<td class="altbg2" rowspan="2" align="center">
					<a href="DeleteBookManageServlet?isbn=${bb.isbn}">删除</a>
				</td>
			</tr>
			
			<tr>

			</tr>
			</c:forEach>
			</table>
</body>
</html>