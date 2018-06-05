<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>医患关系管理系统</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-login.css" />
        <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />

    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="${pageContext.request.contextPath}/user/login.do">
				 <div class="control-group normal_text"> <h3>医患关系管理系统</h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input value="${name}" type="text" id="name" name="name" placeholder="Username" required="required"/>
                        </div>
                    </div>
                </div>
                <div id="noname" style="margin-top: -20px;margin-left: 40px;visibility: hidden"><span style="color: #ff3333;">用户名不存在</span></div>
                <div id="nopassword" style="margin-top: -20px;margin-left: 40px;visibility: hidden"><span style="color: #ff3333;">该用户未设置密码</span></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" id="password" name="password" placeholder="Password" required="required"/>
                        </div>
                    </div>
                </div>
                <div id="errorpasswd" style="margin-top: -20px;margin-left: 40px;visibility: hidden"><span style="color: #ff3333;">密码错误</span></div>
                <div class="form-actions">
                	<span class="pull-left"><a href="zhuce.do" class="flip-link btn btn-info">注   册</a></span>
                    <!-- <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a></span> -->
                    <span class="pull-right"><input type="submit" value="登   录" class="btn btn-success" /></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><a class="btn btn-info"/>Reecover</a></span>
                </div>
            </form>
        </div>
        
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>  
        <script src="${pageContext.request.contextPath}/js/matrix.login.js"></script> 
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        	console.log('${msg}');
        	
        	if('${msg }'=="用户名不存在"){
        		$("#noname").css("visibility","visible");
        	}
        	if('${msg}'=="该用户未设置密码"){
        		$("#nopassword").css("visibility","visible");
        	}
        	if('${msg}'=="密码错误"){
        		$("#errorpasswd").css("visibility","visible");
        	}
        	
        	$("#name").click(function(){
        		$("#noname").css("visibility","hidden");
        		$("#nopassword").css("visibility","hidden");
        	});
        	$("#password").click(function(){
        		$("#errorpasswd").css("visibility","hidden");
        	});
        </script>
    </body>

</html>
