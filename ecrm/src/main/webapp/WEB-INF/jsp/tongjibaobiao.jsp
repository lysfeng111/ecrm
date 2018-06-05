<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>统计报表</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css" />
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uniform.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/select2.css" />
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
        <li><a href="${pageContext.request.contextPath}/suiFangKu/sfk_list.do"><i class="icon icon-th"></i> <span>随访管理</span></a></li>
        <li class="active"><a href="${pageContext.request.contextPath}/charts/chart.do"><i class="icon icon-fullscreen"></i> <span>统计报表</span></a></li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content" style="height: 100%">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="" class="current">统计报表</a></div>
        <h1>统计报表</h1>
        <hr>
    </div>
    <div class="container-fluid" style="height: 100%">
        <div class="row-fluid" style="height: 100%">
            <form method="post" action="">
                <div class="controls controls-row">

                    <select class="span2 m-wrap" id="charts">
                        <option value=1 ${blTypeDto=='1'?'selected':''}>随访情况统计</option>
                        
                    </select>
                    <input type="date"  placeholder="起始日期" class="span2 m-wrap" id="startDate">
                    <div class="span1 m-wrap" style="margin-left: 10px">——</div>
                    <input type="date" style="margin-left: -25px" placeholder="截止日期" class="span2 m-wrap" id="endDate">
                    <input type="submit" value="搜索" class="btn btn-success span1 m-wrap">
                </div>
            </form>
            <div id="container" style="height: 70%"></div>
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
<script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>


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


    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    app.title = '折柱混合';

    option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        legend: {
            data:['随访期','非随访期']
        },
        xAxis: [
            {
                type: 'category',
                data : (function(){
                    var arr=[];
                    $.ajax({
                        type : "post",
                        async : false, //同步执行
                        url : "getsuiFangChart1.do",
                        data : {
                        	
                        },
                        dataType : "json", //返回数据形式为json
                        success : function(result) {
                            if (result) {
                                for(var i=0;i<result.length;i++){
                                    console.log(result[i].mon);
                                    arr.push(result[i].mon);
                                }
                            }

                        },
                        error : function(errorMsg) {
                            alert("不好意思，图表请求数据失败啦!");
                            myChart.hideLoading();
                        }
                    })
                    return arr;
                })() ,
                axisPointer: {
                    type: 'shadow'
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '人数'
            }
        ],
        series: [
            {
                name:'随访期',
                type:'bar',
                data : (function(){
                    var arr=[];
                    $.ajax({
                        type : "post",
                        async : false, //同步执行
                        url : "getsuiFangChart1.do",
                        data : {},
                        dataType : "json", //返回数据形式为json
                        success : function(result) {
                            if (result) {
                                for(var i=0;i<result.length;i++){
                                    console.log(result[i].count);
                                    arr.push(result[i].count);
                                }
                            }

                        },
                        error : function(errorMsg) {
                            alert("不好意思,图表请求数据失败啦!");
                            myChart.hideLoading();
                        }
                    })
                    return arr;
                })()
            },
            {
                name:'非随访期',
                type:'bar',
                data : (function(){
                    var arr=[];
                    $.ajax({
                        type : "post",
                        async : false, //同步执行
                        url : "getsuiFangChart0.do",
                        data : {},
                        dataType : "json", //返回数据形式为json
                        success : function(result) {
                            if (result) {
                                for(var i=0;i<result.length;i++){
                                    console.log(result[i].count);
                                    arr.push(result[i].count);
                                }
                            }

                        },
                        error : function(errorMsg) {
                            alert("不好意思,图表请求数据失败啦!");
                            myChart.hideLoading();
                        }
                    })
                    return arr;
                })()
            }
        ]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>
