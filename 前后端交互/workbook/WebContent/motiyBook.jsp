<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.*, dao.*"%>
<jsp:directive.page import="java.util.HashMap"/>
<jsp:directive.page import="java.util.Set"/>
<jsp:directive.page import="entity.CartItemBean"/>
<jsp:directive.page import="entity.BookBean"/>
<%
  
  	String isbn=request.getParameter("i");
 	HashMap cart=(HashMap)session.getAttribute("cart");
 	CartItemBean cartItem=(CartItemBean)cart.get(isbn);
	BookBean book=cartItem.getBook();
   %>

<html>
<head>
<title>书籍信息</title>
<!-- <link rel="stylesheet" href="./styles.css" type="text/css" />    -->
<LINK href="images/main.css" type="text/css" rel="stylesheet" />
</head>

<body>
<p class="bigFont"><br></p>
			<CENTER>
					<TABLE cellSpacing="0" cellPadding="0" width="778"
						bgColor="#ffffff" background="images/top1bg.jpg" border="0">
						<TBODY>
							<TR>
								<TD width="778"></TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE class="center" height="100" cellSpacing="0"
						cellPadding="0" width="778" bgColor="#ffffff" border="0">
						<TBODY>
							<TR>
								<TD align="center" width="150">
									<IMG title="" height="100" src="images/logo.jpg" width="100" border="0" />
								</TD>
								<TD width="58"></TD>
								<TD vAlign="top" width="110">
									<IMG height="90"
										src="images/top1.jpg" width="70" border="0" />
								</TD>
								<TD vAlign="top" width="110">
									<IMG height="90"
										src="images/top2.jpg" width="70" border="0" />
								</TD>
								<TD vAlign="top" width="110">
									<IMG height="90"
										src="images/top3.jpg" width="70" border="0" />
								</TD>
								<TD vAlign="top" width="110">
									<IMG height="90"
										src="images/top4.jpg" width="70" border="0" />
								</TD>
								<TD width="130"></TD>
							</TR>
						</TBODY>
					</TABLE>

					<TABLE class="center" cellSpacing="0"
						cellPadding="0" width="778" bgColor="#ffffff" border="0">
						<TBODY>
							<TR>
								<TD style="FONT-SIZE: 1px"
									bgColor="#b0b0b0" colSpan="19" height="1">
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing="0" cellPadding="0" width="778"
						bgColor="#ffffff" border="0">
						<TBODY>
							<TR>
								<TD style="FONT-SIZE: 1px"
									bgColor="#dcdcdc" height="3">
								</TD>
							</TR>
							<TR>
								<TD align="right"
									background="images/bn01.jpg" height="120">
								</TD>
							</TR>
						</TBODY>
					</TABLE>

					<TABLE height="15" cellSpacing="0" cellPadding="0"
						width="778" border="0">
						<TBODY>
							<TR>
								<TD
									style="FONT-SIZE: 10px; LINE-HEIGHT: 10px"
									background="images/bnbg1.gif" height="15">
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing="0" cellPadding="0" width="778"
						bgColor="#ffffff" border="0">
						<TBODY>
							<TR>
								<TD vAlign="top" width="168"
									height="400">
									<TABLE class="center" height="100%"
										cellSpacing="0" cellPadding="0" width="168" bgColor="#ffffff"
										background="images/leftbg.gif" border="0">
										<TBODY>

											<TR>
												<TD class="lefttd" vAlign="top" align="center">
													<BR />
												</TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
								<TD vAlign="top" align="center" width="610">
									<TABLE cellSpacing="0"
										cellPadding="0" width="98%" background="images/top01.gif"
										border="0">
										<TBODY>
											<TR>
												<TD align="left"
													height="25">
													<IMG height="11"
														src="images/icon1.gif" width="31" />
													<font style="cursor:hand" onclick="javascript:history.go(-1);">返回</font>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									<BR />
									<form action="MotiyBookToCart" method="post">
									<TABLE style="TEXT-ALIGN: center"
										cellSpacing="0" cellPadding="0" width="590" border="0">
										<TBODY>
											<tr height="100">
												<td colspan="3">
												<h2><%=book.getTitle() %></h2>
												</td>
											</tr>
											
											<tr>
											
												<!-- create table cell for product image -->
												<td rowspan="5"><!-- cell spans 5 rows -->
													<img
														style="border: thin solid black"
														src="images/<%=book.getImageFile() %>" alt="<%=book.getTitle() %>" />
												</td>

												<!-- create table cells for price in row 1 -->
												<td class="bold" align="left">
													图书编号：
												</td>

												<td align="left">
													<%=book.getIsbn() %>
												</td>
											</tr>

											<tr align="left">

												<!-- create table cells for ISBN in row 2 -->
												<td class="bold"  align="left">
													价格：
												</td>

												<td  align="left">
													<%=book.getPrice() %>
												</td>
												
											</tr>

											<tr  align="left">

												<!-- create table cells for edition in row 3 -->
												<td class="bold">
													版本号：
												</td>

												<td>
												
												</td>
											</tr>

											<tr align="left">

												<!-- create table cells for copyright in row 4 -->
												<td class="bold">
													版权：
												</td>

												<td>
													<%=book.getCopyright()  %>
												</td>
											</tr>
											<tr align="left">
												<td class="bold">数量：</td>
												<td>
												 <input type="text" name="txtNum" size="4" value="<%=cartItem.getQuantity()%>"/>
												</td>
												
												
											</tr>

											<tr align="left">
												<!-- create Add to Cart button in row 5 -->
												<td>
													
												</td>

												<!-- create View Cart button in row 5 -->
												<%
												
												
												 %>
												<td colspan="2">
													<div align="center">
													
       												<input type="submit" name="Submit" value="修 改" />
       												<input type="hidden" name="isbn" value="<%=isbn %>">
      												</div>
												</td>
											</tr>
										</TBODY>
									</TABLE>
									</form>
									<BR />
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE class="center" cellSpacing="0"
						cellPadding="0" width="778" bgColor="#ffffff" border="0">
						<TBODY>
							<TR>
								<TD align="middle" background="images/bk.gif" height="50">
								</TD>
							</TR>
						</TBODY>
					</TABLE>

				</CENTER>
<body>&nbsp;</body>

</html>
