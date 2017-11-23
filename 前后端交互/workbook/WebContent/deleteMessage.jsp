<%@ page language="java" import="dao.*,entity.*"
	pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>管理员-留言管理</title>
<link rel="stylesheet" type="text/css" href="left.files/style_admin.css">

</head>

<body>
<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<tr>
				<td colspan="15" class="header">留言管理 
				</td>
			</tr>
			
			<tr>
				<td align="center" class="altbg1">
					<b>留言编号</b>
				</td>
				<td align="center" class="altbg1">
					<b>标题</b>
				</td>
				<td align="center" class="altbg1">
					<b>内容</b>
				</td>
				<td align="center" class="altbg1">
					<b>作者</b>
				</td>
				<td align="center" class="altbg1">
					<b>留言时间</b>
				</td>				
				
				<td align="center" class="altbg1">
					<b>删除</b>
				</td>
			</tr>
			<jsp:useBean id="messageDao" class="dao.MessageDao" scope="request"/>
			<c:set var="message" value="${messageDao.message}" scope="session"/>
			<c:forEach items="${sessionScope.message}" var="mes" varStatus="status">
			
			<tr>
				<td rowspan="2" align="center" class="altbg2">
					${mes.messageId}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${mes.title}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${mes.content}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${mes.username}
				</td>
				<td class="altbg2" rowspan="2" align="center">
					${mes.writeDate}
				</td>		
				<td class="altbg2" rowspan="2" align="center">
					<a href="DeleteMessagesServlet?messageId=${mes.messageId}"  onClick="return window.confirm('确认要删除选中的信息')">删除</a>
				</td>
			</tr>
			
			<tr>

			</tr>
			</c:forEach>
			</table>
</body>

</html>
