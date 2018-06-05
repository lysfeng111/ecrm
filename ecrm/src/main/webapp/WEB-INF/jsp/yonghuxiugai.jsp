<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户修改</title>
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
        <li><a href="${pageContext.request.contextPath}/user/shouye.do"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <c:if test="${sessionScope.roleId == 1}">
        	<li class="active"> <a href="${pageContext.request.contextPath}/user/yonghuguanli.do"><i class="icon icon-signal"></i> <span>用户管理</span></a> </li>
        </c:if>
        <li> <a href="${pageContext.request.contextPath}/bingLiGuanLi/bl_list.do"><i class="icon icon-inbox"></i> <span>病例管理</span></a> </li>
        <li><a href="${pageContext.request.contextPath}/suiFangKu/sfk_list.do"><i class="icon icon-th"></i> <span>随访管理</span></a></li>
        <li><a href="${pageContext.request.contextPath}/charts/chart.do"><i class="icon icon-fullscreen"></i> <span>统计报表</span></a></li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="病例管理.html" class="current">病例管理</a></div>
        <h1>用户修改</h1>

        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <form action="yh_xiugai.do" method="post" class="form-inline" autocomplete="on" onsubmit="return checkForm()">
                <table width="600px" style="border-collapse:separate; border-spacing:0px 10px;">
                	<tr>
                        <td align="right">
                            <div class="form-group">
                                <label for="userName" class="sr-only">用户名：</label>
                                <input type="text" id="userName" value="${user.userName }" class="form-control" name="userName" placeholder="用户名" required="required" >
                            </div>
                        </td>
                        <div id="usercheck" style="margin-top:15px;margin-right:400px;visibility: hidden;float: right"><span style="color: #ff3333;">用户名已存在</span></div>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="roleId" class="sr-only">角色：</label>
                                <select  style="width: 220px" name="roleId" id="roleId">
                                	<option value="2" ${user.roleId=='2'?'selected':'' }>普通用户</option>
                                    <option value="1" ${user.roleId=='1'?'selected':'' }>管理员</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="passwd" class="sr-only">密码：</label>
                                <input type="password" id="passwd" value="${user.passwd }" class="form-control" name="passwd" placeholder="密码" required="required">
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="telephone" class="sr-only">电话：</label>
                                <input type="text" value="${user.telephone }"  class="form-control" id="telephone" name="telephone" placeholder="电话" />
                            </div>
                        </td>
                        <div id="phonecheck" style="margin-top:142px;margin-right:-100px;visibility: hidden;float: right"><span style="color: #ff3333;">手机号格式不正确</span></div>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="email" class="sr-only">邮箱：</label>
                                <input type="text" value="${user.email }" id="email" class="form-control" name="email" placeholder="邮箱地址" />
                            </div>
                        </td>
                        <div id="emailcheck" style="margin-top:184px;margin-right:-86px;visibility: hidden;float: right"><span style="color: #ff3333;">邮箱格式不正确</span></div>
                    </tr>
                </table>
                <input type="hidden" name="id" value="${user.id }"/>
                <button style="margin-left: 330px;margin-top: 20px" class="btn btn-success">确认修改</button>
            </form>


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
    
  //手机号邮箱验证
    $("#telephone").focus(function () {
        $("#phonecheck").css("visibility","hidden");
    });
    $("#telephone").blur(function () {
        // 判断手机号码
    	if($.trim($("#telephone").val()).length ==0){
         
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
    });
    $("#email").blur(function () {
        if($.trim($("#email").val()).length == 0){
        	
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
    	if($.trim($("#userName").val()).length == 0){
    		return false;
    	}
    	if($.trim($("#passwd").val()).length == 0){
    		return false;
    	}
    	if($.trim($("#email").val()).length != 0 && isEmial($.trim($("#email").val())) === false){
    		return false;
    	}
    	if($.trim($("#telephone").val()).length != 0 && isEmial($.trim($("#telephone").val())) === false){
    		return false;
    	}
    	alert("用户修改成功！");
    }

    $("#userName").focus(function(){
    	$("#usercheck").css("visibility","hidden");
    });
    if("${msg}" == "用户名已存在"){
    	$("#usercheck").css("visibility","visible");
    }
</script>
</body>
</html>
