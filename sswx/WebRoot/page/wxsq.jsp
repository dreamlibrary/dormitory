<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wxsq.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
     <form action="RepairApply" method="get" >
        <table border="1px" align="center">
            <tr>
                <td>报修人</td>
                <td><input type="text" size="50" name="name" /></td>
            </tr>
            <tr>
                <td>地点</td>
                <td>
                    <select name="build">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                    </select>栋
                    <input type="text" size="10" name="domotry" maxlength="4"/>寝室
            <tr>
                <td>联系方式</td>
                <td><input name="tell" type="text" size="50" maxlength="11"/></td>
            </tr>
            <tr>
                <td>预约时间</td>
                <td>
                    <select name="week">
                        <option>星期一</option>
                        <option>星期二</option>
                        <option>星期三</option>
                        <option>星期四</option>
                        <option>星期五</option>
                    </select>
                    <select name="time">
                        <option>一二节</option>
                        <option>三四节</option>
                        <option>五六节</option>
                        <option>七八节</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>报修项目</td>
                <td>
                    <input name="type" type="checkbox" value="床" />床
                    <input name="type" type="checkbox" value="空调" />空调
                    <input name="type" type="checkbox" value="厕所" />厕所
                    <input name="type" type="checkbox" value="灯" />灯
                    <input name="type" type="checkbox" value="其他" />其他
                </td>
            </tr>
            <tr>
                <td>报修描述</td>
                <td><textarea name="discript" cols="50" rows="5"></textarea></td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="提交" size="25" /><input type="submit" value="取消" size="25" />
                </td>
            </tr>
        </table>
    </form>
    <br>
  </body>
</html>
