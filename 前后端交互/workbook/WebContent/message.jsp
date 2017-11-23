<%@ page language="java" import="java.util.*,entity.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>留言本</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=留言本 name=description><LINK href="images/jd100.css" 
type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2800.1400" name=GENERATOR></HEAD>
<BODY leftMargin=0 background=images/bookbg.gif topMargin=3 marginheight="0" 
marginwidth="0">
<a href="books.jsp" style="margin-left:1300px">返回</a>
<DIV align=center>
<TABLE cellSpacing=1 cellPadding=4 width=750 align=center border=0>
  <TBODY>
  <TR>
    <TD class=unnamed2 align=right colSpan=2 height=20>
      <MARQUEE onmouseover=stop(); onmouseout=start(); scrollAmount=3><B><FONT 
      color=#000099>欢迎您使用&nbsp;留言本&nbsp;</FONT> 
</B></MARQUEE></TD></TR></TBODY></TABLE>
<DIV style="WIDTH: 750px" align=center>
<DIV align=left>
<TABLE height=20 cellSpacing=0 cellPadding=0 width=% border=0>
  <TBODY>
  <TR>
    <TD width=11 background=images/titlemu_1.gif></TD>
    <TD width=* background=images/titlemu_2.gif>
      <DIV align=center><A class=jdmenu 
      href="newMessage.jsp"><B>新留言</B> 
    </A></DIV></TD>
    <TD width=12 
background=images/titlemu_3.gif></TD></TR></TBODY></TABLE></DIV></DIV>
<FORM name=form onsubmit=submitonce(this) action="AddMessageServlet" method=post>
<TABLE style="BORDER-COLLAPSE: collapse" borderColor=#111111 cellSpacing=0 
cellPadding=0 width=750 align=center border=0>
  <TBODY>
  <TR>
    <TD width="2%"><IMG src="images/T_left.gif" border=0> </TD>
    <TD width="96%" background=images/Tt_bg.gif></TD>
    <TD width="2%"><IMG src="images/T_right.gif" border=0> 
</TD></TR></TBODY></TABLE>
<TABLE class=jd_tab style="BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" 
height=51 cellSpacing=0 cellPadding=3 width=750 align=center border=1>
  <TBODY>
  <TR class=jd_titlemu>
    <TD class=jd_tab width="5%">
      <DIV align=center> </DIV></TD>
    <TD class=jd_tab width="50%">
      <DIV align=center>标题 </DIV></TD>
    <TD class=jd_tab width="20%">
      <DIV align=center>作者 </DIV></TD>
    <TD class=jd_tab width="25%">
      <DIV align=center>时间 </DIV></TD></TR>
      
      <c:forEach items="${sessionScope.listMessage}" var="message">
  <TR class=unnamed1>
    <TD class=jd_tab vAlign=top align=middle width="6%" height=25><br> </TD>
    <TD class=jd_tab vAlign=top align=left width="53%" height=25>${message.title }</TD>
    <TD class=jd_tab vAlign=top align=middle width="20%" height=25>${message.username}</TD>
    <TD class=jd_tab vAlign=top align=left width="14%" height=25>${message.writeDate }</TD></TR>
      </c:forEach>
  </TBODY></TABLE>
<TABLE style="BORDER-COLLAPSE: collapse" cellSpacing=0 cellPadding=0 width=750 
align=center border=0>
  <TBODY>
  <TR>
    <TD><IMG src="images/T_bottomleft.gif" border=0> </TD>
    <TD width="100%" background=images/T_bottombg.gif></TD>
    <TD><IMG src="images/T_bottomright.gif" border=0> </TD></TR></TBODY></TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width=10 align=center border=0>
	  <TBODY>
	  <TR>
    <TD height=5></TD></TR></TBODY></TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width=10 align=center border=0>
	  <TBODY>
	  <TR>
    <TD height=5>
    	<TABLE class=jd_tab style="BORDER-COLLAPSE: collapse; WORD-WRAP: break-word" 
height=139 cellSpacing=0 cellPadding=3 width=750 align=center border=1>
  <TBODY>
  <TR class=jd_titlemu>
    <TD colspan="2" class=jd_tab>
      <div align="center">新留言</div></TD>
    </TR>      
  <TR class=unnamed1>
    <TD width="172" height=21 align=left vAlign=top class=jd_tab><div align="right">姓名：</div></TD>
    <TD width="560" align=left vAlign=top class=jd_tab><%=((UserInfo)session.getAttribute("userInfo")).getLoginName() %><br></TD>
  </TR>
  <TR class=unnamed1>
    <TD height=21 align=left vAlign=top class=jd_tab><div align="right">标题：</div></TD>
    <TD height=21 align=left vAlign=top class=jd_tab><input type="text" name="txtTitle"></TD>
  </TR>
  <TR class=unnamed1>
    <TD height=22 align=left vAlign=top class=jd_tab><div align="right">内容：</div></TD>
    <TD height=22 align=left vAlign=top class=jd_tab><textarea cols="60" rows="5" name="txtContent"></textarea></TD>
  </TR>
  <TR class=unnamed1>
    <TD height=21 align=left vAlign=top class=jd_tab><div align="right">时间：</div></TD>
    <TD height=21 align=left vAlign=top class=jd_tab><input type="text" name="txtDate"></TD>
  </TR>
  <TR class=unnamed1>
    <TD height=21 align=left vAlign=top class=jd_tab>&nbsp;</TD>
    <TD height=21 align=left vAlign=top class=jd_tab><input type="submit" name="Submit2" value="提 交"></TD>
  </TR>
  <TR class=unnamed1>
    <TD height=25 colspan="2" align=left vAlign=top class=jd_tab></TD>
  </TR>
  </TBODY></TABLE>
    </TD></TR></TBODY></TABLE>
</FORM></DIV></BODY></HTML>

