<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>新增病例</title>
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
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="bl_list.do">病例管理</a><a href="bl_xiangqing.do?blCode=${bingLi.blCode }">病例详情</a> <a href="" class="current">新增病例</a></div>
        <h1>新增病例</h1>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <form action="xinzenbingli.do" method="post" class="form-inline" autocomplete="on" onsubmit="return checkForm()">
                <table width="900px" >
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blName" class="sr-only">姓名：</label>
                                <input type="text" value=""  class="form-control" name="blName" placeholder="姓名" required="required">
                            </div>
                        </td>
                        <td align="right">
                            <div class="form-group">
                                <label for="blCode" class="sr-only">病例号：</label>
                                <input type="text" value="" class="form-control" name="blCode" placeholder="自动生成" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blSex" class="sr-only">性別：</label>
                                <select  style="width: 220px" name="blSex">
                                    <option value="1" ${bingLi.blSex=='1'?'selected':'' }>男</option>
                                    <option value="2" ${bingLi.blSex=='2'?'selected':'' }>女</option>
                                </select>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blType" class="sr-only">病例类型：</label>
                                <select  style="width: 220px" name="blType" id="blType">
                                    <option value="1" ${bingLi.blSex=='1'?'selected':'' }>门诊病例</option>
                                    <option value="2" ${bingLi.blSex=='2'?'selected':'' }>住院病例</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blChushengDate" class="sr-only">出生日期：</label>
                                <input type="date"  class="form-control" name="blChushengDate" placeholder="出生日期" required="required"/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blKeshi" class="sr-only">科室：</label>
                                <select  style="width: 220px"  name="blKeshi">
                                    <option value="神经内科" ${bingLi.blKeshi=='神经内科'?'selected':'' }>神经内科</option>
                                    <option value="呼吸内科" ${bingLi.blKeshi=='呼吸内科'?'selected':'' }>呼吸内科</option>
                                    <option value="心血管科" ${bingLi.blKeshi=='心血管科'?'selected':'' }>心血管科</option>
                                    <option value="消化内科" ${bingLi.blKeshi=='消化内科'?'selected':'' }>消化内科</option>
                                    <option value="肾内科" ${bingLi.blKeshi=='肾内科'?'selected':'' }>肾内科</option>
                                    <option value="血液科" ${bingLi.blKeshi=='血液科'?'selected':'' }>血液科</option>
                                    <option value="内分泌科" ${bingLi.blKeshi=='内分泌科'?'selected':'' }>内分泌科</option>
                                    <option value="风湿代谢科" ${bingLi.blKeshi=='风湿代谢科'?'selected':'' }>风湿代谢科</option>
                                    <option value="老干科" ${bingLi.blKeshi=='老干科'?'selected':'' }>老干科</option>
                                    <option value="传染科" ${bingLi.blKeshi=='传染科'?'selected':'' }>传染科</option>
                                    <option value="肿瘤内科" ${bingLi.blKeshi=='肿瘤内科'?'selected':'' }>肿瘤内科</option>
                                    <option value="神经外科" ${bingLi.blKeshi=='神经外科'?'selected':'' }>神经外科</option>
                                    <option value="耳鼻喉科" ${bingLi.blKeshi=='耳鼻喉科'?'selected':'' }>耳鼻喉科</option>
                                    <option value="口腔科" ${bingLi.blKeshi=='口腔科'?'selected':'' }>口腔科</option>
                                    <option value="心胸外科" ${bingLi.blKeshi=='心胸外科'?'selected':'' }>心胸外科</option>
                                    <option value="普通外科" ${bingLi.blKeshi=='普通外科'?'selected':'' }>普通外科</option>
                                    <option value="甲乳科" ${bingLi.blKeshi=='甲乳科'?'selected':'' }c>甲乳科</option>
                                    <option value="胃肠外科" ${bingLi.blKeshi=='胃肠外科'?'selected':'' }>胃肠外科</option>
                                    <option value="肝胆胰脾外科" ${bingLi.blKeshi=='肝胆胰脾外科'?'selected':'' }>肝胆胰脾外科</option>
                                    <option value="肛肠科" ${bingLi.blKeshi=='肛肠科'?'selected':'' }>肛肠科</option>
                                    <option value="泌尿外科" ${bingLi.blKeshi=='泌尿外科'?'selected':'' }>泌尿外科</option>
                                    <option value="骨科" ${bingLi.blKeshi=='骨科'?'selected':'' }>骨科</option>
                                    <option value="整形科" ${bingLi.blKeshi=='整形科'?'selected':'' }>整形科</option>
                                    <option value="肿瘤外科" ${bingLi.blKeshi=='肿瘤外科'?'selected':'' }>肿瘤外科</option>
                                    <option value="烧伤科" ${bingLi.blKeshi=='烧伤科'?'selected':'' }>烧伤科</option>
                                    <option value="血管外科" ${bingLi.blKeshi=='血管外科'?'selected':'' }>血管外科</option>
                                    <option value="皮肤科" ${bingLi.blKeshi=='皮肤科'?'selected':'' }>皮肤科</option>
                                    <option value="妇科" ${bingLi.blKeshi=='妇科'?'selected':'' }>妇科</option>
                                    <option value="产科" ${bingLi.blKeshi=='产科'?'selected':'' }>产科</option>
                                    <option value="儿科" ${bingLi.blKeshi=='儿科'?'selected':'' }>儿科</option>
                                    <option value="中医科" ${bingLi.blKeshi=='中医科'?'selected':'' }>中医科</option>
                                    <option value="移植专科" ${bingLi.blKeshi=='移植专科'?'selected':'' }>移植专科</option>
                                    <option value="生殖科" ${bingLi.blKeshi=='生殖科'?'selected':'' }>生殖科</option>
                                    <option value="营养科" ${bingLi.blKeshi=='营养科'?'selected':'' }>营养科</option>
                                    <option value="康复科" ${bingLi.blKeshi=='康复科'?'selected':'' }>康复科</option>
                                    <option value="精神科" ${bingLi.blKeshi=='精神科'?'selected':'' }>精神科</option>
                                    <option value="麻醉科" ${bingLi.blKeshi=='麻醉科'?'selected':'' }>麻醉科</option>
                                    <option value="检验科" ${bingLi.blKeshi=='检验科'?'selected':'' }>检验科</option>
                                    <option value="病理科" ${bingLi.blKeshi=='病理科'?'selected':'' }>病理科</option>
                                    <option value="体检科" ${bingLi.blKeshi=='体检科'?'selected':'' }>体检科</option>
                                    <option value="疼痛科" ${bingLi.blKeshi=='疼痛科'?'selected':'' }>疼痛科</option>
                                    <option value="预防保健科" ${bingLi.blKeshi=='预防保健科'?'selected':'' }>预防保健科</option>
                                    <option value="急诊科" ${bingLi.blKeshi=='急诊科'?'selected':'' }>急诊科</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="telephone" class="sr-only">手机号码：</label>
                                <input type="text" value="" id="telephone" class="form-control" name="blDianhua" placeholder="手机号码" required="required">
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blJiatingDianhua" class="sr-only">家庭号码：</label>
                                <input type="text" value=""  class="form-control" name="blJiatingDianhua" placeholder="家庭号码" >
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blZhengjianType" class="sr-only">证件类型：</label>
                                <select  style="width: 220px"  name="blZhengjianType">
                                    <option value="1" ${bingLi.blZhengjianType=='1'?'selected':'' }>身份证</option>
                                    <option value="2" ${bingLi.blZhengjianType=='2'?'selected':'' }>士官证</option>
                                    <option value="3" ${bingLi.blZhengjianType=='3'?'selected':'' }>驾驶证</option>
                                    <option value="4" ${bingLi.blZhengjianType=='4'?'selected':'' }>护照</option>
                                    <option value="5" ${bingLi.blZhengjianType=='5'?'selected':'' }>港澳通行证</option>
                                </select>

                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blZhengjianhao" class="sr-only">证件号：</label>
                                <input type="text" class="form-control" name="blZhengjianhao" placeholder="证件号" required="required">
                            </div>
                        </td>
                    </tr>
                    <tr><td><br></td></tr>
                    <tr align="right">
                        <td colspan="2" style="margin-left: 100px">
                            <div class="form-group">
                                <label for="blDizhi" class="sr-only">地址：</label>
                                <input style="width: 657px " value="" type="text" class="form-control" name="blDizhi" placeholder="地址" >
                            </div>
                        </td>
                    </tr>

                    <tr><td><br></td></tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blRuyuanDate" class="sr-only">入院日期：</label>
                                <input type="date" class="form-control" name="blRuyuanDate" placeholder="入院日期" required="required">
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blChuyuanDate" class="sr-only">出院日期：</label>
                                <input type="date" class="form-control" name="blChuyuanDate" placeholder="出院日期" required="required">
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blMzysCode" class="sr-only">门诊医生：</label>
                                <input type="text" value="" class="form-control" name="blMzysName" placeholder="门诊医生" >
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blZyysCode" class="sr-only">住院医生：</label>
                                <input type="text" value="" class="form-control" name="blZyysName" placeholder="住院医生" >
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blCyzd" class="sr-only">出院诊断：</label>
                                <input type="text" class="form-control" name="blCyzd" placeholder="出院诊断" required="required">
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td>
                            <div class="form-group">
                                <label for="blZdysName" class="sr-only">主刀医生：</label>
                                <input type="text" value="" class="form-control" name="blZdysName" placeholder="主刀医生" >
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label for="blShoushuDate" class="sr-only">手术时间：</label>
                                <input type="date" value="" class="form-control" name="blShoushuDate" placeholder="手术时间" >
                            </div>
                        </td>
                    </tr>
                    <tr align="right">
                        <td colspan="2" style="margin-left: 100px">
                            <div class="form-group">
                                <label for="blXiangqing" class="sr-only">诊治情況：</label>
                                <textarea style="resize: none;width: 657px" name="blXiangqing" placeholder="诊治情况" required="required"></textarea>
                            </div>
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="id" value="${bingLi.id }" />
                <button style="margin-left: 230px;margin-top: 20px" class="btn btn-success">添加病例</button>
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
    
    function checkForm(){
    	alert("新增病例成功！");
    	return true;
    }
</script>
</body>
</html>