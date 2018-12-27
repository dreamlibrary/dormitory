<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>维修系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="js/login.js"></script>
  </head>
  
  <body>
        <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <a id="modal-56477" href="#modal-container-56477" role="button" class="btn" data-toggle="modal">公告</a>

                <div class="modal fade" id="modal-container-56477" role="dialog" aria-labelledby="myModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title" id="myModalLabel">
                                    公告
                                </h4>
                            </div>
                            <div class="modal-body">
                                宿舍维修系统 开发中......
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">了解</button>
                                <!-- <button type="button" class="btn btn-primary">了解</button> -->
                            </div>
                        </div>

                    </div>

                </div>

                <h1 class="text-center">
                    <font color="gray">宿舍维修系统</font>
                </h1>

            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-4 column">
            </div>
            <div class="col-md-4 column">
                <form role="form" name="myForm" action="validate.jsp" method="get" onsubmit="return checkForm()">
                    <div class="form-group">
                        <label for="exampleInputEmail1">账号：</label>
                        <input type="test" id="userName" name="username" class="form-control" id="exampleInputEmail1" placeholder="userName" />

                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">密码：</label>
                        <input type="password" id="password" name="password" class="form-control" id="exampleInputPassword1"
                            placeholder="password" />
                    </div>
                    <!-- <div class="form-group">
                        <label for="exampleInputFile">文件上传</label><input type="file" id="exampleInputFile" />
                        <p class="help-block">
                            Example block-level help text here.
                        </p>
                    </div> -->

                    <label>
                        <table>
                            <tr>
                                <td>
                                    <input id="admin" type="radio" name="userType" value="admin" checked />
                                    <label>系统管理员&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>

                                    <input id="dormManager" type="radio" name="userType" value="dormManager" />
                                    <label>维修人员&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <input id="student" type="radio" name="userType" value="student" />
                                    <label>学生</label>
                                </td>
                            </tr>
                        </table>
                    </label>


                    <div class="checkbox">
                        <label><input id="remember" name="remember" type="checkbox" value="remember-me">记住我</label>
                        <font id="error" color="red">&nbsp;&nbsp;&nbsp;&nbsp;</font>
                    </div>
                    <button type="submit" class="btn btn-default">登录</button>
                    <button type="submit" class="btn btn-default">注册</button>
                </form>
            </div>
            <div class="col-md-4 column">
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
            </div>
        </div>
    </div>
  </body>
</html>
