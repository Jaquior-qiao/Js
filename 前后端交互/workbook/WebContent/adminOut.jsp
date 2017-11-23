<%@ page language="java" pageEncoding="gbk"%>
<%
  session.invalidate();
  response.sendRedirect("books.jsp");
%>

