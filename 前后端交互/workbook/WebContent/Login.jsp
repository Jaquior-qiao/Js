<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML>
<HEAD>
<TITLE>ebooks</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="images/main.css" type=text/css rel=stylesheet>
</HEAD>
<BODY>
	<CENTER>
		<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff
			background=images/top1bg.jpg border=0>
			<TBODY>
				<TR>
					<TD width=778>&nbsp;</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE class=center height=100 cellSpacing=0 cellPadding=0 width=778
			bgColor=#ffffff border=0>
			<TBODY>
				<TR>
					<TD align=middle width=150><IMG title="" height=100
						src="images/logo.jpg" width=100 border=0></TD>
					<TD width=58>&nbsp;</TD>
					<TD vAlign=top width=110><IMG height=90 src="images/top1.jpg"
						width=70 border=0></TD>
					<TD vAlign=top width=110><IMG height=90 src="images/top2.jpg"
						width=70 border=0></TD>
					<TD vAlign=top width=110><IMG height=90 src="images/top3.jpg"
						width=70 border=0></TD>
					<TD vAlign=top width=110><IMG height=90 src="images/top4.jpg"
						width=70 border=0></TD>
					<TD width=130></TD>
				</TR>
			</TBODY>
		</TABLE>

		<TABLE class=center cellSpacing=0 cellPadding=0 width=778
			bgColor=#ffffff border=0>
			<TBODY>
				<tr>
					<TD style="FONT-SIZE: 1px" bgColor=#b0b0b0 colSpan=19 height=1></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff border=0>
			<TBODY>
				<TR>
					<TD style="FONT-SIZE: 1px" bgColor=#dcdcdc height=3></TD>
				</TR>
				<TR>
					<TD align=right background=images/bn01.jpg height=120>&nbsp;</TD>
				</TR>
			</TBODY>
		</TABLE>

		<TABLE height=15 cellSpacing=0 cellPadding=0 width=778 border=0>
			<TBODY>
				<TR>
					<TD style="FONT-SIZE: 10px; LINE-HEIGHT: 10px"
						background=images/bnbg1.gif height=15>&nbsp;</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=778 bgColor=#ffffff border=0>
			<TBODY>
				<TR>
					<TD vAlign=top width=168 height=400>
						<TABLE class=center height="100%" cellSpacing=0 cellPadding=0
							width=168 bgColor=#ffffff background=images/leftbg.gif border=0>
							<TBODY>

								<TR>
									<TD class=lefttd vAlign=top align=middle><BR></TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
					<TD vAlign=top align=middle width=610>
						<TABLE cellSpacing=0 cellPadding=0 width="98%"
							background=images/top01.gif border=0>
							<TBODY>
								<TR>
									<TD align=left height=25><IMG height=11
										src="images/icon1.gif" width=31>��¼ �� <a
										href="regist.jsp">ע��</a></TD>
								</TR>
							</TBODY>
						</TABLE> <BR>
						<form method="post" action="LoginServlet">
							<table width="400" border="1">
								<tr>
									<td width="92">�û�����</td>
									<td width="292"><label> <input type="text"
											name="txtName" />
									</label></td>
								</tr>
								<tr>
									<td>�� �룺</td>
									<td><label> <input type="text" name="txtPass" />
									</label></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="Submit" value="�� ½" /> <label>
											<input type="reset" name="Submit2" value="�� ��" />
									</label></td>
								</tr>
							</table>
						</form>
						<TABLE style="TEXT-ALIGN: center" cellSpacing=0 cellPadding=0
							width=590 border=0>
							<TBODY>
								<!--   ��ʾ���ݿ�ʼ  -->
								<TR>
									<TD>
								</TR>
							</TBODY>
						</TABLE> <BR>
					</TD>
				</TR>
			</TBODY>
			<TABLE class=center cellSpacing=0 cellPadding=0 width=778
				bgColor=#ffffff border=0>
				<TBODY>
					<TR>
						<TD align=middle background=images/bk.gif height=50>&nbsp;</TD>
					</TR>
				</TBODY>
			</TABLE>
</BODY>
</HTML>
