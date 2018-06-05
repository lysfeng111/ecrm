<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户注册</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css" />
</head>
<body>

<!--Header-part-->
<div id="header">
    <h1><a href="dashboard.html">医患关系管理系统</a></h1>
</div>
<!--close-Header-part-->


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">管理员</span><b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="icon-user"></i>个人资料</a></li>
                <li class="divider"></li>
                <li><a href="${pageContext.request.contextPath}/user/newlogin.do"><i class="icon-key"></i>退出登陆</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="${pageContext.request.contextPath}/user/newlogin.do"><i class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
    </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="Search here..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="active"><a href=""><i class="icon icon-home"></i> <span>用户管理</span></a> </li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="" class="current">用户注册</a></div>
        <h1>用户注册</h1>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span7" style="margin-left: 20%">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>注册</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="userzhuce.do" method="post" class="form-horizontal" onsubmit="return checkForm()">
                            <div class="control-group" >
                                <label class="control-label">用户名：</label>
                                <div class="controls">
                                    <input type="text" id="username" value="${user.userName }"  placeholder="用户名" name="userName" required="required"/>
                                </div>
                            </div>
                            <div id="usercheck" style="margin-top: -37px;margin-right: 99px;visibility: hidden;float: right"><span style="color: #ff3333;">用户名已存在</span></div>
                            <div class="control-group">
                                <label class="control-label">密码：</label>
                                <div class="controls">
                                    <input type="password" placeholder="密码" value="${user.passwd }" name="passwd" id="password" required="required"/>
                                </div>
                            </div>
                            <div class="passwordcheck" style="margin-top: -37px;margin-right:158px;visibility: hidden;float: right"><i class="icon icon-check" style="color: #228B22"></i></div>
                            <div class="control-group">
                                <label class="control-label">确认密码：</label>
                                <div class="controls">
                                    <input type="password" placeholder="确认密码" value="${user.passwd }" id="password2" required="required" />
                                </div>
                            </div>
                            <div class="passwordcheck" style="margin-top: -37px;margin-right:158px;visibility: hidden;float: right"><i class="icon icon-check" style="color: #228B22"></i></div>
                            <div id="passwordcheck" style="margin-top: -37px;margin-right: 87px;visibility: hidden;float: right"><span style="color: #ff3333;">两次密码不一致</span></div>
                            <div class="control-group">
                                <label class="control-label">手机号：</label>
                                <div class="controls">
                                    <input type="text" id="telephone" name="telephone" value="" placeholder="手机号" />
                                </div>
                            </div>
                            <div id="pecheck" style="margin-top: -37px;margin-right: 40px;visibility: hidden;float: right"><span style="color: #ff3333;">手机号和邮箱必须有一个</span></div>
                            <div id="phonecheck" style="margin-top: -37px;margin-right: 75px;visibility: hidden;float: right"><span style="color: #ff3333;">手机号格式不正确</span></div>
                            <div class="control-group">
                                <label class="control-label">邮箱：</label>
                                <div class="controls">
                                    <input type="text" id="email"  name="email" value="" placeholder="邮箱" />
                                </div>
                            </div>
                            <div id="emailcheck" style="margin-top: -37px;margin-right: 85px;visibility: hidden;float: right"><span style="color: #ff3333;">邮箱格式不正确</span></div>
                            <div class="form-actions" style="margin-left: 50px">
                                <input type="submit" value="注  册" class="btn btn-success">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--End-breadcrumbs-->

</div>
<!--end-main-container-part-->

<script src="${pageContext.request.contextPath}/js/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath}/js/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.dashboard.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.interface.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.chat.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.form_validation.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.wizard.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.popover.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/matrix.tables.js"></script>

<script type="text/javascript">
    // This function is called from the pop-up menus to transfer to
    // a different page. Ignore if the value returned is a null string:
    function goPage (newURL) {

        // if url is empty, skip the menu dividers and reset the menu selection to default
        if (newURL != "") {

            // if url is "-", it is this page -- reset the menu:
            if (newURL == "-" ) {
                resetMenu();
            }
            // else, send page to designated URL
            else {
                document.location.href = newURL;
            }
        }
    }

    // resets the menu selection upon entry to this page:
    function resetMenu() {
        document.gomenu.selector.selectedIndex = 2;
    }
    $("#username").focus(function () {
        $("#usercheck").css("visibility","hidden");
        $("#username").css({"border-color":"#ff3333","box-shadow":"0 0 2px #ff3333"});
    });
    $("#username").blur(function () {
        $("#username").css({"border-color":"#C4C4C4","box-shadow":"0 0 0"});
    });

    $("#password2").focus(function () {
        $("#passwordcheck").css("visibility","hidden");
        $(".passwordcheck").css("visibility","hidden");
        $("#password2").css({"border-color":"#ff3333","box-shadow":"0 0 2px #ff3333"});
    });
    $("#password").focus(function () {
        $("#passwordcheck").css("visibility","hidden");
        $(".passwordcheck").css("visibility","hidden");
        $("#password").css({"border-color":"#ff3333","box-shadow":"0 0 2px #ff3333"});
    });
    $("#password2,#password").blur(function () {
        $("#password2,#password").css({"border-color":"#C4C4C4","box-shadow":"0 0 0"});
        if($("#password2").val()!= "" && $("#password").val() != ""){
            if($.trim($("#password2").val()) === $.trim($("#password").val())){
                $("#passwordcheck").css("visibility","hidden");
                $(".passwordcheck").css("visibility","visible");
            }else{
                $(".passwordcheck").css("visibility","hidden");
                $("#passwordcheck").css("visibility","visible");
                $("#password,#password2").css({"border-color":"#ff3333","box-shadow":"0 0 10px #ff3333"});
            }
        }

    });
    //手机号邮箱验证
    $("#telephone").focus(function () {
        $("#phonecheck").css("visibility","hidden");
        $("#pecheck").css("visibility","hidden");
    });
    $("#telephone").blur(function () {
        // 判断手机号码
    	if($.trim($("#email").val()).length == 0 && $.trim($("#telephone").val()).length ==0){
            $("#pecheck").css("visibility","visible");
        } else if($.trim($("#telephone").val()).length !==0) {
            if(isPhoneNo($.trim($('#telephone').val())) === false) {
                $("#phonecheck").css("visibility","visible");

            }
        }
    });
    function isPhoneNo(phone) {
        var pattern = /^1[345789]\d{9}$/;
        return pattern.test(phone);
    }
    $("#email").focus(function () {
        $("#emailcheck").css("visibility","hidden");
        $("#pecheck").css("visibility","hidden");
    });
    $("#email").blur(function () {
        if($.trim($("#email").val()).length == 0 && $.trim($("#telephone").val()).length ==0){
            $("#pecheck").css("visibility","visible");
        }else if($.trim($("#email").val()).length !==0){
            if(isEmial($.trim($("#email").val())) === false){
                $("#emailcheck").css("visibility","visible");
            }
        }
    })
    function isEmial(em) {
        var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        return pattern.test(em);
    }
    function checkForm(){
    	if($.trim($("#email").val()).length == 0 && $.trim($("#telephone").val()).length ==0){
    		return false;
    	}
    	if($.trim($("#telephone").val()).length == 0 && isEmial($.trim($("#email").val())) === false){
    		return false;
    	}
    	if($.trim($("#email").val()).length == 0 && isPhoneNo($.trim($('#telephone').val())) === false){
    		return false;
    	}
    	if(isPhoneNo($.trim($('#telephone').val())) === false && isEmial($.trim($("#email").val())) === false){
    		return false;
    	}
    	alert("用户注册成功！");
    	return true;
    }

    if("${msg}" == "用户名已存在"){
    	$("#usercheck").css("visibility","visible");
        $("#username").css({"border-color":"#ff3333","box-shadow":"0 0 2px #ff3333"});
    }
	
</script>
</body>
</html>




