<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>首页</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css" />
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        ul{
            list-style: none;
        }
        #schedule-box{
            width: 290px;
            margin: 0 auto;
            padding: 35px 20px;
            font-size: 13px;
        }
        .schedule-hd{
            display: flex;
            justify-content: space-between;
            padding: 0 15px;
        }
        .today{
            flex: 1;
            text-align: center;
        }
        .ul-box{
            overflow: hidden;
        }
        .ul-box > li{
            float: left;
            width: 14.28%;
            text-align: center;
            padding: 5px 0;
        }
        .other-month{
            color: #999999;
        }
        .current-month{
            color: #333333;
        }
        .today-style{
            border-radius: 50%;
            background: #58d321;
        }
        .arrow{
            cursor: pointer;
        }
        .dayStyle{
            display: inline-block;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            text-align: center;
            line-height: 35px;
            cursor: pointer;
        }
        .current-month > .dayStyle:hover{
            background: #00BDFF;
            color: #ffffff;
        }
        .today-flag{
            background: #00C2B1;
            color: #fff;
        }
        .boxshaw{
            box-shadow: 2px 2px 15px 2px #e3e3e3;
        }
        .selected-style {
            background: #00BDFF;
            color: #ffffff;
        }
        #h3Ele{
            text-align: center;
            padding: 10px;
        }
    </style>
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
        <li class="active"><a href="${pageContext.request.contextPath}/user/shouye.do"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <c:if test="${sessionScope.roleId == 1}">
        	<li> <a href="${pageContext.request.contextPath}/user/yonghuguanli.do"><i class="icon icon-signal"></i> <span>用户管理</span></a> </li>
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
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home current"></i> 首页</a></div>
        <h1>首页</h1>
        <div class="xinzen">
            <a href="${pageContext.request.contextPath}/bingLiGuanLi/xzblview.do"><i class="icon icon-plus"></i><span> 新增病例</span></a>
        </div>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">

            <div class="span"></div>
            <div class="span8">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                        <h5>${mon} 的随访信息</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>病例号</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>年龄</th>
                                <th>出院诊断</th>
                                <th>出院时间</th>
                                <th>随访状态</th>

                                <th>随访时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${suiFangList }" var="suiFang">
			                    <tr >
			                        <td>${suiFang.blCode}</td>
			                        <td>${suiFang.blName}</td>
			                        <td>
			                            <c:choose>
			                                <c:when test="${suiFang.blSex == 1}">男</c:when>
			                                <c:when test="${suiFang.blSex == 2}">女</c:when>
			                            </c:choose>
			                        </td>
			                        <td>${suiFang.nianLing}</td>
			                        <td>${suiFang.blCyzd }</td>
			                        <td><fmt:formatDate value="${suiFang.blChuyuanDate }" pattern="yyyy-MM-dd"/></td>
			                        <td>
			                            <c:choose>
			                                <c:when test="${suiFang.sfState == 1}">随访期</c:when>
			                                <c:when test="${suiFang.sfState == 0}">非随访期</c:when>
			                            </c:choose>
			                        </td>
			                       
			                        <td><fmt:formatDate value="${suiFang.sfDate}" pattern="yyyy-MM-dd"/></td>
			                    </tr>
			                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="span3">
                <div id='schedule-box' class="boxshaw"></div>
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
<script src="${pageContext.request.contextPath}/js/matrix.calendar.js"></script>
<script src="${pageContext.request.contextPath}/js/schedule.js"></script>
<script>
    var mySchedule = new Schedule({
        el: '#schedule-box',
        //date: '2018-9-20',
        clickCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        nextMonthCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        nextYeayCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        prevMonthCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        prevYearCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        }
    });
</script>
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
</script>
</body>
</html>
