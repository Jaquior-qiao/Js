<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.*, dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							src="images/icon1.gif" width=31> 图书列表</TD>
					</TR>
				</TBODY>
			</TABLE>
			<BR>
			<TABLE style="TEXT-ALIGN: center" cellSpacing=0 cellPadding=0
				width=590 border=0>
				<TBODY>
				<!--   显示内容开始  -->
		<jsp:useBean id="titlesBean" class="dao.TitlesBean" scope="request"/>
		<c:set var="titles" value="${titlesBean.titles}" scope="session"/>
		<c:forEach items="${sessionScope.titles}" var="bb" varStatus="status">
		<c:if test="${status.index%3==0}">
      	<TR>
      	</c:if>
      <TD>
      
						<TABLE cellSpacing=0 cellPadding=0 width="180"
							background=images/bg.jpg border=0 height="140">
							<TBODY>
								<TR>
								
									<TD vAlign=bottom height=30>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="dispalyBookSession.jsp?id=${bb.isbn }">
									${bb.title}
									</a>
									</TD>
									
								</TR>
								<TR align=middle>
								
									<TD height=120>
									<a href="dispalyBookSession.jsp?id=${ bb.isbn}">
									<img src="images/${bb.imageFile  }" width="80" alt="${bb.title}">
									</a>
									</TD>
									
								</TR>
							</TBODY>
						</TABLE>
						<BR>
						</TD>
						
						<c:if test="${status.index%3==2}">					
						</TR>						
						</c:if>
						</c:forEach>
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
			<TD align=middle background=images/bk.gif height=50><a href="Login.jsp">后台管理</a></TD>
		</TR>
	</TBODY>
</TABLE>

</CENTER>
</BODY>
</HTML>