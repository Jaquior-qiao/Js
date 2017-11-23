<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.*, dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="id" value="${param.id}"></c:set>
<c:forEach var="titles" items="${sessionScope.titles}">
	<c:if test="${id==titles.isbn}">
		<c:set var="bookToAdd" value="${titles}" scope="session"></c:set>
	</c:if>

</c:forEach>
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
									background="images/bnbg1.gif" height="15">&nbsp;
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
									<TABLE style="TEXT-ALIGN: center"
										cellSpacing="0" cellPadding="0" width="590" border="0">
										<TBODY>
											<tr height="100">
												<td colspan="3">
												<h2>${bookToAdd.title }</h2>
												</td>
											</tr>
											
											<tr>
											
												<!-- create table cell for product image -->
												<td rowspan="6"><!-- cell spans 5 rows -->
													<img
														style="border: thin solid black"
														src="images/${bookToAdd.imageFile}" alt="${bookToAdd.title }" />
												</td>

												<!-- create table cells for price in row 1 -->
												<td class="bold" align="left">
													图书编号：
												</td>

												<td align="left">
													${bookToAdd.isbn }
												</td>
											</tr>

											<tr align="left">

												<!-- create table cells for ISBN in row 2 -->
												<td class="bold"  align="left">
													价格：
												</td>

												<td  align="left">
													${bookToAdd.price}
												</td>
												
											</tr>

											<tr  align="left">

												<!-- create table cells for edition in row 3 -->
												<td class="bold">
													作者：
												</td>

												<td>
													${bookToAdd.author}
												</td>
											</tr>

											<tr align="left">

												<!-- create table cells for copyright in row 4 -->
												<td class="bold">
													版权：
												</td>

												<td>
													${bookToAdd.copyright}
												</td>
											</tr>
                                             <tr  align="left">

												<!-- create table cells for edition in row 3 -->
												<td class="bold">
												   详情：
												</td>

												<td>
													${bookToAdd.description}
												</td>
											</tr>
											<tr align="left">
												<!-- create Add to Cart button in row 5 -->
												<td>
													<form method="post" action="AddBookToCart">
															<input type="submit" value="放入购物车" />
															</form>
												</td>

												<!-- create View Cart button in row 5 -->
												<td>
													<form method="get" action="viewCartUpdate.jsp">
															<input type="submit" value="查看购物车" />
															</form>	
												</td>	
											</tr>
											<tr align="left">
												<td>
													
												</td>
												<td>
													<form method="post" action="MessageServlet?isbn=${bookToAdd.isbn }">
														<input type="submit" value="查看留言" />
													</form>
												</td>
											</tr>
										</TBODY>
									</TABLE>
									<BR />
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE class="center" cellSpacing="0"
						cellPadding="0" width="778" bgColor="#ffffff" border="0">
						<TBODY>
							<TR>
								<TD align="middle" background="images/bk.gif" height="50"><br><br></TD>
							</TR>
						</TBODY>
					</TABLE>

				</CENTER>
<body>&nbsp;</body>

</html>
