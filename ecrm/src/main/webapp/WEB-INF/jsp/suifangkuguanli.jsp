<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>随访管理</title>
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
        	<li> <a href="${pageContext.request.contextPath}/user/yonghuguanli.do"><i class="icon icon-signal"></i> <span>用户管理</span></a> </li>
        </c:if>
        <li> <a href="${pageContext.request.contextPath}/bingLiGuanLi/bl_list.do"><i class="icon icon-inbox"></i> <span>病例管理</span></a> </li>
        <li class="active"><a href="${pageContext.request.contextPath}/suiFangKu/sfk_list.do"><i class="icon icon-th"></i> <span>随访管理</span></a></li>
        <li><a href="${pageContext.request.contextPath}/charts/chart.do"><i class="icon icon-fullscreen"></i> <span>统计报表</span></a></li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="sfk_list.do" class="current">随访管理</a></div>
        <h1>随访管理</h1>
        <div class="xinzen">
            <a href="yijiansuifang.do"><i class="icon icon-ok"></i><span> 一键随访</span></a>&nbsp&nbsp
            <a href="${pageContext.request.contextPath}/bingLiGuanLi/xzblview.do"><i class="icon icon-plus"></i><span> 新增病例</span></a>
        </div>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <form method="post" action="sfk_list.do">
                <div class="controls controls-row">

                    <select class="span2 m-wrap" name="suiFangState">
                        <option value=0 >随访状态</option>
                        <option value=1 ${suiFangState=='1'?'selected':'' }>随访期</option>
                        <option value=2 ${suiFangState=='2'?'selected':'' }>非随访期</option>
                    </select>
                    
                    <select class="span2 m-wrap col-sm-pull-2" name="blKeshi">
                        <option value="科室">科室</option>
                        <option value="神经内科" ${blKeshi=='神经内科'?'selected':'' }>神经内科</option>
                        <option value="呼吸内科" ${blKeshi=='呼吸内科'?'selected':'' }>呼吸内科</option>
                        <option value="心血管科" ${blKeshi=='心血管科'?'selected':'' }>心血管科</option>
                        <option value="消化内科" ${blKeshi=='消化内科'?'selected':'' }>消化内科</option>
                        <option value="肾内科" ${blKeshi=='肾内科'?'selected':'' }>肾内科</option>
                        <option value="血液科" ${blKeshi=='血液科'?'selected':'' }>血液科</option>
                        <option value="内分泌科" ${blKeshi=='内分泌科'?'selected':'' }>内分泌科</option>
                        <option value="风湿代谢科" ${blKeshi=='风湿代谢科'?'selected':'' }>风湿代谢科</option>
                        <option value="老干科" ${blKeshi=='老干科'?'selected':'' }>老干科</option>
                        <option value="传染科" ${blKeshi=='传染科'?'selected':'' }>传染科</option>
                        <option value="肿瘤内科" ${blKeshi=='肿瘤内科'?'selected':'' }>肿瘤内科</option>
                        <option value="神经外科" ${blKeshi=='神经外科'?'selected':'' }>神经外科</option>
                        <option value="耳鼻喉科" ${blKeshi=='耳鼻喉科'?'selected':'' }>耳鼻喉科</option>
                        <option value="口腔科" ${blKeshi=='口腔科'?'selected':'' }>口腔科</option>
                        <option value="心胸外科" ${blKeshi=='心胸外科'?'selected':'' }>心胸外科</option>
                        <option value="普通外科" ${blKeshi=='普通外科'?'selected':'' }>普通外科</option>
                        <option value="甲乳科" ${blKeshi=='甲乳科'?'selected':'' }c>甲乳科</option>
                        <option value="胃肠外科" ${blKeshi=='胃肠外科'?'selected':'' }>胃肠外科</option>
                        <option value="肝胆胰脾外科" ${blKeshi=='肝胆胰脾外科'?'selected':'' }>肝胆胰脾外科</option>
                        <option value="肛肠科" ${blKeshi=='肛肠科'?'selected':'' }>肛肠科</option>
                        <option value="泌尿外科" ${blKeshi=='泌尿外科'?'selected':'' }>泌尿外科</option>
                        <option value="骨科" ${blKeshi=='骨科'?'selected':'' }>骨科</option>
                        <option value="整形科" ${blKeshi=='整形科'?'selected':'' }>整形科</option>
                        <option value="肿瘤外科" ${blKeshi=='肿瘤外科'?'selected':'' }>肿瘤外科</option>
                        <option value="烧伤科" ${blKeshi=='烧伤科'?'selected':'' }>烧伤科</option>
                        <option value="血管外科" ${blKeshi=='血管外科'?'selected':'' }>血管外科</option>
                        <option value="皮肤科" ${blKeshi=='皮肤科'?'selected':'' }>皮肤科</option>
                        <option value="妇科" ${blKeshi=='妇科'?'selected':'' }>妇科</option>
                        <option value="产科" ${blKeshi=='产科'?'selected':'' }>产科</option>
                        <option value="儿科" ${blKeshi=='儿科'?'selected':'' }>儿科</option>
                        <option value="中医科" ${blKeshi=='中医科'?'selected':'' }>中医科</option>
                        <option value="移植专科" ${blKeshi=='移植专科'?'selected':'' }>移植专科</option>
                        <option value="生殖科" ${blKeshi=='生殖科'?'selected':'' }>生殖科</option>
                        <option value="营养科" ${blKeshi=='营养科'?'selected':'' }>营养科</option>
                        <option value="康复科" ${blKeshi=='康复科'?'selected':'' }>康复科</option>
                        <option value="精神科" ${blKeshi=='精神科'?'selected':'' }>精神科</option>
                        <option value="麻醉科" ${blKeshi=='麻醉科'?'selected':'' }>麻醉科</option>
                        <option value="检验科" ${blKeshi=='检验科'?'selected':'' }>检验科</option>
                        <option value="病理科" ${blKeshi=='病理科'?'selected':'' }>病理科</option>
                        <option value="体检科" ${blKeshi=='体检科'?'selected':'' }>体检科</option>
                        <option value="疼痛科" ${blKeshi=='疼痛科'?'selected':'' }>疼痛科</option>
                        <option value="预防保健科" ${blKeshi=='预防保健科'?'selected':'' }>预防保健科</option>
                        <option value="急诊科" ${blKeshi=='急诊科'?'selected':'' }>急诊科</option>
                    </select>
                    <input type="text" placeholder="姓名" class="span2 m-wrap" name="blName">

                    <input type="submit" value="搜索" class="btn btn-success span1 m-wrap">
                </div>
            </form>

            <div class="span"></div>
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
                    <th>操作</th>
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
                                <c:when test="${suiFang.sfState == null}">未随访</c:when>
                            </c:choose>
                        </td>
                       
                        <td><fmt:formatDate value="${suiFang.sfDate}" pattern="yyyy-MM-dd"/></td>
                        <c:if test="${suiFang.sfState == 0 ||suiFang.sfState ==1 || suiFang.sfState == null}">
                        	<td><a href="duanxin_suifang.do?blCode=${suiFang.blCode }&suiFangState=${suiFangState}&suiFangType=${suiFangType}&blKeshi=${blKeshi }&blName=${blName }&nianLing=${nianLing}">增加随访</a></td>
                        </c:if>
                        
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
    //alert("一键随访成功！");
</script>
</body>
</html>
