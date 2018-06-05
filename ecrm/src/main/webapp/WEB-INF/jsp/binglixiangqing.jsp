<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>病例详情</title>
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
    <h1><a href="dashboard.html">Matrix Admin</a></h1>
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
        <li class="active"> <a href="${pageContext.request.contextPath}/bingLiGuanLi/bl_list.do"><i class="icon icon-inbox"></i> <span>病例管理</span></a> </li>
        <li><a href="${pageContext.request.contextPath}/suiFangKu/sfk_list.do"><i class="icon icon-th"></i> <span>随访管理</span></a></li>
        <li><a href="${pageContext.request.contextPath}/charts/chart.do"><i class="icon icon-fullscreen"></i> <span>统计报表</span></a></li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="bl_list.do">病例管理</a> <a href="bl_xiangqing.do?blCode=${bingLi.blCode }" class="current">病例详情</a></div>
        <h1>病例管理</h1>
        <div class="xinzen">
           <a href="${pageContext.request.contextPath}/bingLiGuanLi/xzblview.do"><i class="icon icon-plus"></i><span> 新增病例</span></a>
        </div>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <form action="#" method="get" class="form-inline" autocomplete="on">
                <table width="900px" >
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blName" class="sr-only">姓名：</label>
                                <input type="text" value="${bingLi.blName }"  class="form-control" id="blName" placeholder="姓名" required="required" readonly>
                            </div>
                        </td>
                        <td align="right">
                            <div class="form-group">
                                <label for="blCode" class="sr-only">病例号：</label>
                                <input type="text" value="${bingLi.blCode }" class="form-control" id="blCode" placeholder="病例号" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blSex" class="sr-only">性別：</label>
                               <!--  <select  style="width: 220px" id="blSex">
                                    <option value="1">男</option>
                                    <option value="2">女</option>
                                </select>  -->
                                <c:if test="${bingLi.blSex == 1 }">
                                	<input type="text" value="男" class="form-control" id="blSex" placeholder="性别" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == 2 }">
                                	<input type="text" value="女" class="form-control" id="blSex" placeholder="性别" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == null }">
                                	<input type="text" class="form-control" id="blSex" placeholder="性别" readonly>
                                </c:if>
                            </div>

                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blKeshi" class="sr-only">科室：</label>
                                <!-- <select  style="width: 220px"  id="blKeshi">
                                    <option value="神经内科">神经内科</option>
                                    <option value="呼吸内科">呼吸内科</option>
                                    <option value="心血管科">心血管科</option>
                                    <option value="消化内科">消化内科</option>
                                    <option value="肾内科">肾内科</option>
                                    <option value="血液科">血液科</option>
                                    <option value="内分泌科">内分泌科</option>
                                    <option value="风湿代谢科">风湿代谢科</option>
                                    <option value="老干科">老干科</option>
                                    <option value="传染科">传染科</option>
                                    <option value="肿瘤内科">肿瘤内科</option>
                                    <option value="神经外科">神经外科</option>
                                    <option value="耳鼻喉科">耳鼻喉科</option>
                                    <option value="口腔科">口腔科</option>
                                    <option value="心胸外科">心胸外科</option>
                                    <option value="普通外科">普通外科</option>
                                    <option value="甲乳科">甲乳科</option>
                                    <option value="胃肠外科">胃肠外科</option>
                                    <option value="肝胆胰脾外科">肝胆胰脾外科</option>
                                    <option value="肛肠科">肛肠科</option>
                                    <option value="泌尿外科">泌尿外科</option>
                                    <option value="骨科">骨科</option>
                                    <option value="整形科">整形科</option>
                                    <option value="肿瘤外科">肿瘤外科</option>
                                    <option value="烧伤科">烧伤科</option>
                                    <option value="血管外科">血管外科</option>
                                    <option value="皮肤科">皮肤科</option>
                                    <option value="妇科">妇科</option>
                                    <option value="产科">产科</option>
                                    <option value="儿科">儿科</option>
                                    <option value="中医科">中医科</option>
                                    <option value="移植专科">移植专科</option>
                                    <option value="生殖科">生殖科</option>
                                    <option value="营养科">营养科</option>
                                    <option value="康复科">康复科</option>
                                    <option value="精神科">精神科</option>
                                    <option value="麻醉科">麻醉科</option>
                                    <option value="检验科">检验科</option>
                                    <option value="病理科">病理科</option>
                                    <option value="体检科">体检科</option>
                                    <option value="疼痛科">疼痛科</option>
                                    <option value="预防保健科">预防保健科</option>
                                    <option value=">急诊科">急诊科</option>
                                </select>  -->
                                <input type="text" value="${bingLi.blKeshi }" class="form-control" id="blKeshi" placeholder="科室" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blChushengDate" class="sr-only">出生日期：</label>
                                <input type="text" value="<fmt:formatDate value="${bingLi.blChushengDate}" pattern="yyyy-MM-dd"/>" class="form-control" id="blChushengDate" placeholder="出生日期" readonly>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="nianLing" class="sr-only">年齡：</label>
                                <input type="text" value="${bingLi.nianLing }" class="form-control" id="nianLing" placeholder="年齡" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blDianhua" class="sr-only">手机号码：</label>
                                <input type="text" value="${bingLi.blDianhua }" class="form-control" id="blDianhua" placeholder="手机号码" readonly>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blJiatingDianhua" class="sr-only">家庭号码：</label>
                                <input type="text" value="${bingLi.blJiatingDianhua }"  class="form-control" id="blJiatingDianhua" placeholder="家庭号码" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blZhengjianType" class="sr-only">证件类型：</label>
                                <!-- <select  style="width: 220px"  id="blZhengjianType">
                                    <option value="1">身份证</option>
                                    <option value="2">士官证</option>
                                    <option value="3">驾驶证</option>
                                    <option value="4">护照</option>
                                    <option value="5">港澳通行证</option>
                                </select>  -->
                                <c:if test="${bingLi.blSex == 1 }">
                                	<input type="text" value="身份证" class="form-control" id="blZhengjianType" placeholder="证件类型" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == 2 }">
                                	<input type="text" value="士官证" class="form-control" id="blZhengjianType" placeholder="证件类型" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == 3 }">
                                	<input type="text" value="驾驶证" class="form-control" id="blZhengjianType" placeholder="证件类型" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == 4 }">
                                	<input type="text" value="护照" class="form-control" id="blZhengjianType" placeholder="证件类型" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == 5}">
                                	<input type="text" value="港澳通行证" class="form-control" id="blZhengjianType" placeholder="证件类型" readonly>
                                </c:if>
                                <c:if test="${bingLi.blSex == null}">
                                	<input type="text" class="form-control" id="blZhengjianType" placeholder="证件类型" readonly>
                                </c:if>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blZhengjianhao" class="sr-only">证件号：</label>
                                <input type="text" value="${bingLi.blZhengjianhao }" class="form-control" id="blZhengjianhao" placeholder="证件号" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr><td><br></td></tr>
                    <tr align="right">
                        <td colspan="2" style="margin-left: 100px">
                            <div class="form-group">
                                <label for="blDizhi" class="sr-only">地址：</label>
                                <input style="width: 657px " value="${bingLi.blDizhi }" type="text" class="form-control" id="blDizhi" placeholder="地址" readonly>
                            </div>
                        </td>
                    </tr>

                    <tr><td><br></td></tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blRuyuanDate" class="sr-only">入院日期：</label>
                                <input type="text" value="<fmt:formatDate value="${bingLi.blRuyuanDate}" pattern="yyyy-MM-dd"/>" class="form-control" id="blRuyuanDate" placeholder="入院日期" readonly>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blChuyuanDate" class="sr-only">出院日期：</label>
                                <input type="text" value="<fmt:formatDate value="${bingLi.blChuyuanDate}" pattern="yyyy-MM-dd"/>" class="form-control" id="blChuyuanDate" placeholder="出院日期" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blMzysCode" class="sr-only">门诊医生：</label>
                                <input type="text" value="${bingLi.blMzysName }" class="form-control" id="blMzysCode" placeholder="门诊医生" readonly>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blZyysCode" class="sr-only">住院医生：</label>
                                <input type="text" value="${bingLi.blZyysName }" class="form-control" id="blZyysCode" placeholder="住院医生" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blCyzd" class="sr-only">出院诊断：</label>
                                <input type="text" value="${bingLi.blCyzd }" class="form-control" id="blCyzd" placeholder="出院诊断" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blZdysName" class="sr-only">主刀医生：</label>
                                <input type="text" value="${zdysName }" class="form-control" id="blZdysName" placeholder="主刀医生" readonly>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blShoushuDate" class="sr-only">手术时间：</label>
                                <input type="text" value="${bingLi.blShoushuDate}" class="form-control" id="blShoushuDate" placeholder="手术时间" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td colspan="2" style="margin-left: 100px">
                            <div class="form-group">
                                <label for="blXiangqing" class="sr-only">诊治情況：</label>
                                <textarea style="resize: none;width: 657px" id="blXiangqing" placeholder="诊治情况" readonly>${bingLi.blXiangqing }</textarea>
                            </div>
                        </td>
                    </tr>
                </table>
                <a href="bl_xiugai.do?blCode=${bingLi.blCode }&zdysName=${zdysName}"><button style="margin-left: 230px;margin-top: 20px" type="button" class="btn btn-success">修    改</button></a>
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
    
</script>
</body>
</html>