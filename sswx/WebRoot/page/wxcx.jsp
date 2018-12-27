<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	ResultSet rs = (ResultSet) session.getAttribute("rs");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'wxcx.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body  align="center">
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>报修人</th>
							<th>地点</th>
							<th>联系方式</th>
							<th>预约时间</th>
							<th>报修项目</th>
							<th>报修描述</th>
						</tr>

					</thead>

					<tbody>
						<%
							while (rs.next()) {
						%>
						<tr class="success">
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("build")+"栋"+rs.getString("domotry")+"寝室"%></td>
							<td><%=rs.getString("tell")%></td>
							<td><%=rs.getString("week")+" 、"+rs.getString("time")%></td>
							<td><%=rs.getString("type")%></td>
							<td><%=rs.getString("discript")%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<br>
</body>
</html>
