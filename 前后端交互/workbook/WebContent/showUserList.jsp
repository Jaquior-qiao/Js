<%@ page language="java" import="dao.*,entity.*,java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>������Ա-����</title>
		<link rel="stylesheet" type="text/css" href="left.files/style_admin.css">
</head>
<body>
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<form name="form1" action="showUserList.jsp" method="post">
			<tr>
				<td colspan="15" class="header">
					�û�����
				</td>
			</tr>
			<tr>
				<td align="center" class="altbg1">
					<b>�û���</b>
				</td>
				
				<td align="center" class="altbg1">
					<b>Ȩ��</b>
				</td>
				<td align="center" class="altbg1">
					<b><INPUT onClick="return window.confirm('ȷ��Ҫɾ��ѡ�е���Ϣ')"
							type="submit" value="ɾ��"> </b>
				</td>
			</tr>
			
			
			<c:forEach items="${sessionScope.listUsers}" var="listUsers" varStatus="status">
			
			<tr>
            <td class="altbg2"><div align="center">${ listUsers.loginName}</div></td>
            <td class="altbg2"><div align="center">${ listUsers.userRoleId}</div></td>
            <td class="altbg2"><div align="center"><a href="DeleteUserServlet?userId=${listUsers.userId }" onClick="return window.confirm('ȷ��Ҫɾ��ѡ�е���Ϣ')">ɾ��</a></div></td>
          	</tr>
			</c:forEach>
	</table>
</body>
</html>