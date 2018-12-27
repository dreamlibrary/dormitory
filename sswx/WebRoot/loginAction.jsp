<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	ResultSet rs = (ResultSet) session.getAttribute("rs");
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'loginAction.jsp' starting page</title>
    
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
  	<center>
		<table class="gridtable">
			<tr>
				<td align="center" colspan="6">学生信息</td>
			</tr>
			<tr>
				<td>姓名</td>
				<td>性别</td>
				<td>专业</td>
				<td>年级</td>
				<td align="center" colspan="2">操作</td>
			</tr>
			<%
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("username")%></td>
				<td><%=rs.getString("username")%></td>
				<td><%=rs.getString("username")%></td>
				<td><%=rs.getString("username")%></td>

			</tr>
			<%
				}
			%>
			<tr>
				<td align="center" colspan="6">
					<a href="stuAdd.jsp">添加 </a>
				</td>
			</tr>
		</table>
	</center>
    <br>
  </body>
</html>
