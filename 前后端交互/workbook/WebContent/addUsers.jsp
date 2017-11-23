<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="left.files/style_admin.css">
	</head>

	<body>
		<form name="form1" action="AddUsersServlet" method="post">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<input type="hidden" name="action" value="save" />
				<tr>
					<td colspan="12" class="header">
						管理员-添加
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						管理员名称：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="userName" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						密&nbsp; 码：
					</td>
					<td class="altbg2" colspan="11">
						<input type="password" name="password" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1"> 
					<br></td>
					<td class="altbg2" colspan="11">
						<input type="submit" value="提交" name="B1">
						<input type="reset" value="重置" name="B2">
					</td>
				</tr>


				<tr>
					<td class="altbg1">
					<br></td>
					<td class="altbg2" colspan="11">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>
