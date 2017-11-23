<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:directive.page import="entity.*"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'order.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body>

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
		<TR>
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
				background=images/bnbg1.gif height=15></TD>
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
						<TD class=lefttd vAlign=top align=middle><BR>
						</TD>
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
							src="images/icon1.gif" width=31>&nbsp;&nbsp;&nbsp;填写订单</TD>
					</TR>
				</TBODY>
			</TABLE>
			<BR>
			<p style="font-weight: bold">请输入你的个人信息：</p>
			<TABLE style="TEXT-ALIGN: center" cellSpacing=0 cellPadding=0
				width=590 border=0>
				<TBODY>

					<!--   显示内容开始  -->

				<form method="post" action="ProcessOrder">
					<!-- table of form elements -->
					<table>
						<tr>
							<td class="left bold">用户名：</td>

							<td><input type="text" name="username" size="25" value="<%=((UserInfo)session.getAttribute("userInfo")).getLoginName() %>" />
							  
							</td>
						</tr>

						<tr>
							<td>&nbsp;</td>
						</tr>

						<tr>
							<td class="left bold">信用卡：</td>

							<td><input type="text" name="creditcard" size="25" /></td>
						</tr>

						<tr>
							<td>&nbsp;</td>
						<tr>
							<td class="left bold">邮编：</td>

							<td><input type="text" name="zipcode" size="10" /></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						<tr>
							<td class="left bold">电话：</td>

							<td><input type="text" name="phone" size="11" /></td>
						</tr>

					</table>
					<br />
					<br />
					<!-- enable user to submit the form  -->
					<p><input type="submit" value="提交" /></p>
					</form>
					<!--   显示内容结束  -->
				</TBODY>
			</TABLE>
			<BR>
			</TD>
		</TR>
	</TBODY>
</TABLE>
<TABLE class=center cellSpacing=0 cellPadding=0 width=778
	bgColor=#ffffff border=0>
	<TBODY>
		<TR>
			<TD align=middle background=images/bk.gif height=50></TD>
		</TR>
	</TBODY>
</TABLE>

</CENTER>
</BODY>
</html>
