<%@ page language="java" import="dao.*,entity.*" pageEncoding="gbk"%>

<%
	String isbn=request.getParameter("isbn");
	BookManage bm=new BookManage();
	BookBean bb=bm.getTitle(isbn);
 %>
<html>

	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>����Ա-�޸�ͼ��</title>
		<link rel="stylesheet" type="text/css" href="left.files/style_admin.css">
		
	</head>

	<body>
		<form name="form1" action="ModifyBookManageServlet" method="post">
			<table cellspacing="1" cellpadding="4" width="100%"  align="left"
				class="tableborder" id="table3">
				<input type="hidden" name="isbn" value="<%=bb.getIsbn() %>" />
				<tr>
					<td colspan="12" class="header">�޸�ͼ����Ϣ 
					</td>
				</tr>
				
				<tr>
					<td class="altbg1">ͼ�����ƣ� 
					</td>
					<td class="altbg2">
						<input type="text" name="title" size="34" value="<%=bb.getTitle() %>" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						ͼ�����ߣ�
					</td>
					<td class="altbg2">
						<input type="text" name="author" size="34" value="<%=bb.getAuthor() %>" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						ͼ���ţ�
					</td>
					<td class="altbg2">
						<input type="text" name="isbn1" size="34" value="<%=bb.getIsbn() %>" />
					</td>
				</tr>	
				
				<tr>
					<td class="altbg1">
						�������ڣ�
					</td>
					<td class="altbg2">
						<input type="text" name="copyright" size="34" value="<%=bb.getCopyright() %>" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						ͼ��۸�
					</td>
					<td class="altbg2">
						<input type="text" name="price" size="34" value="<%=bb.getPrice() %>" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						ͼ��ͼƬ
					</td>
					<td class="altbg2">
						<img border="1" name="image"  src="../images/<%=bb.getImageFile() %>"  width="80" height="100"> 
</td>
				</tr>
				<tr>
					<td class="altbg1">
						ͼ����ܣ�
					</td>
					<td class="altbg2">
						<textarea rows="5" cols="60" name="description" value="<%=bb.getDescription() %>" ></textarea>
					</td>
				</tr>
				

				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2">
						<input type="submit" value="�ύ" name="B1" />
						&nbsp;
						<input type="reset" value="����" name="B2" />
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>
