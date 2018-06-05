<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户管理</title>
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
        <h1>用户管理</h1>
        <div class="xinzen">
            <a href="xzyhview.do"><i class="icon icon-plus"></i><span> 新增用户</span></a>
        </div>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <form method="post" action="yonghuguanli.do">
                <div class="controls controls-row">
                    <label class="span2 control-label" style="margin-left: 15px;margin-top: 4px">角色：</label>
                    <select class="m-wrap span2" style="margin-left: -100px" name="roleId" id="roleId">
                    	<option value="0" ${roleId=='0'?'selected':''}>所有</option>
                        <option value="1" ${roleId=='1'?'selected':''}>管理员</option>
                        <option value="2" ${roleId=='2'?'selected':''}>普通用户</option>
                    </select>
                    <label class="span2 control-label" style="margin-left: 80px;margin-top: 4px">用户名：</label>
                    <input type="text" placeholder="用户名" value="${userName}" class="span2 m-wrap" style="margin-left: -90px" name="userName" id="userName">
                    <input type="submit" value="搜索" class="btn btn-success span1 m-wrap">
                </div>
            </form>

            <div class="span"></div>
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>角色</th>
                    <th>密码</th>
                    <th>医生编号</th>
                    <th>电话</th>
                    <th>邮箱</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList }" var="user">
                <tr >
                    <td>${user.userName }</td>
                    <td>${user.roleId }</td>
                    <td>${user.passwd }</td>
                    <td>${user.ysCode }</td>
                    <td>${user.telephone }</td>
                    <td>${user.email }</td>
                    <td><a class="delete"  href="yh_shanchu.do?id=${user.id }">删除</a><a style="margin-left:10%" href="yh_xiugaiview.do?id=${user.id }">修改</a></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
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
    
   	$(".delete").click(function(){
   		var content = $(this).parent().parent().find("td:eq(0)").text();
   		var flag = confirm("确认要删除"+ content +"的信息吗？");
   		return flag;
   	});

</script>
</body>
</html>
