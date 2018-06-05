<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <title>短信随访</title>
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
    <style>
    	 .xinxi tr td:first-child {
			 width: 15px;
			 text-align: center;
			 vertical-align: middle;
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
        <div id="breadcrumb"> <a href="index.html" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a> <a href="sfk_list.do">随访管理</a> <a href="duanxin_suifang.do" class="current">短信随访</a></div>
        <h1>短信随访</h1>
        <div class="xinzen">
            <a href="${pageContext.request.contextPath}/bingLiGuanLi/xzblview.do"><i class="icon icon-plus"></i><span> 新增病例</span></a>
        </div>
        <hr>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">

            <div style="margin-left: 25px;width: 20%;float: left;">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                        <h5>病例信息</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <table class="table table-bordered table-striped">
                        	<tr>
                                <td style="width:40%;text-align:right">姓名：</td>
		                        <td>${dxSuiFang.blName }</td>
                            </tr>
                            <tr>
                                <td style="width:40%;text-align:right">性别：</td>
		                        <td>
		                        	<c:choose>
		                                <c:when test="${dxSuiFang.blSex == 1}">男</c:when>
		                                <c:when test="${dxSuiFang.blSex == 2}">女</c:when>
		                            </c:choose>
		                        </td>
                            </tr>
                            <tr>
                                <td style="width:40%;text-align:right">年龄：</td>
		                        <td>${dxSuiFang.nianLing }</td>
                            </tr>
                            <tr>
                                <td style="width:40%;text-align:right">科室：</td>
		                        <td>${dxSuiFang.blKeshi }</td>
                            </tr>
                            <tr>
                                <td style="width:40%;text-align:right">住院医生：</td>
		                        <td>${dxSuiFang.blZyysName }</td>
                            </tr>
                            <tr>
                                <td style="width:40%;text-align:right">出院诊断：</td>
		                        <td>${dxSuiFang.blCyzd }</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div style="margin-right: 5px;margin-top:15px;width:73%;float: right">
	            <table class="table table-striped table-bordered table-hover xinxi">
	                <thead>
	                <tr>
	                    <th><input type="checkbox" class="checkall" name="title-checkbox" /></th>
	                    <th width="15%">发送时间</th>
	                    <th width="15%">标题</th>
	                    <th>内容</th>
	                    <th width="15%">类别</th>
	                </tr>
	                </thead>
	                <tbody id="msg">
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                <tr>
	                    <td><input type="checkbox" style=" opacity:0" class="check"/></td>
	                    <td class="date"></td>
	                    <td class="biaoti"></td>
	                    <td class="neirong"></td>
	                    <td class="type"></td>
	                </tr>
	                
	                </tbody>
	            </table>
	        </div>
            <div style="margin-left: 25px;width: 20%;float: left">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                        <h5>分类列表</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <table class="table table-bordered table-striped with-check xinxi">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>类别名称</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input type="checkbox" class="checkb"/></td>
                                    <td style="text-align:center">告知短信</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="checkb"/></td>
                                    <td style="text-align:center">定期检查</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="checkb"/></td>
                                    <td style="text-align:center">康复指导</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="checkb"/></td>
                                    <td style="text-align:center">家庭护理</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="checkb"/></td>
                                    <td style="text-align:center">节日问候</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End-breadcrumbs-->
</div>
<!--end-main-container-part-->
<div class="modal fade" id="mymodal" tabindex="-1" role="dialog"
		aria-labelledby="modal-small-label">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加病例短信</h4>
				</div>
				<div class="modal-body">
					 <span class="msg">添加</span>
					<form action="" method="post" class="form-inline" autocomplete="on">
                		<table style="width:400px" >
		                    <tr align="right">
		                        <td>
		                            <div class="form-group">
		                                <label for="blName" class="sr-only">分类：</label>
		                                <input type="text" value=""  class="form-control" id="sfType" name="sfType" placeholder="分类" readonly>
		                            </div>
		                        </td>
		                    </tr>

		                    <tr align="right">
		                        <td>
		                            <div class="form-group">
		                                <label for="dxBiaoTi" class="sr-only">标题：</label>
		                                <input type="text" value="" class="form-control" id="dxBiaoTi" name="dxBiaoTi" placeholder="标题" required="required">
		                            </div>
		                        </td>
		                    </tr>
		                    <tr align="right">
		                        <td>
		                            <div class="form-group">
		                                <label for="dxNeiRong" class="sr-only">内容：</label>
		                                <input type="text" value="" class="form-control" id="dxNeiRong" name="dxNeiRong" placeholder="内容" >
		                            </div>
		                        </td>
		                    </tr>
                		</table>
		                <button  id="ajax_submit" onclick="xinzen()" style="margin-left: 230px;margin-top: 20px" class="btn btn-success">添加</button>
		            </form>
				</div>
			</div>
		</div>
	</div>
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

   $(".checkall").click(function () {
      if($(this).is(':checked')){
        $(".check").prop("checked",true);
      }else{
          $(".check").prop("checked",false);
      }
   });
    /* $(".checkallb").click(function () {
        if($(this).is(':checked')){
            $(".checkb").prop("checked",true);
        }else{
            $(".checkb").prop("checked",false);
        }
    }); */
    $(".checkb").click(function(){
    	if($(this).is(':checked')){
    		 $('#mymodal').modal();
    		 var type = $(this).parent().next().html();
    		 $("#sfType").val(type);
    	}
    });
    
    //内容动态插入表格
    var msg = $("#msg").children();

    var arrayDate = new Array(); 
    var arrayBiaoti = new Array(); 
    var arrayNeirong = new Array();
    var arrayType = new Array();
    <c:forEach items="${dxSuiFangList}" var="t">  
    arrayDate.push("${t.sfStartDate}"); //js中可以使用此标签，将EL表达式中的值push到数组中  
    arrayBiaoti.push("${t.dxBiaoti}");
    arrayNeirong.push("${t.dxNeirong}");
    if("${t.sfType}"==1){
    	arrayType.push("告知短信");
    }
    if("${t.sfType}"==2){
    	arrayType.push("定期检查");
    }
    if("${t.sfType}"==3){
    	arrayType.push("康复指导");
    }
    if("${t.sfType}"==4){
    	arrayType.push("家庭护理");
    }
    if("${t.sfType}"==5){
    	arrayType.push("节日问候");
    }
    if("${t.sfType}"==0){
    	arrayType.push("");
    }
    </c:forEach>  

    for(i=0;i<"${dxSuiFangList.size()}";i++){
    	msg[i].children[1].innerHTML=arrayDate[i];
    	msg[i].children[2].innerHTML=arrayBiaoti[i];
    	msg[i].children[3].innerHTML=arrayNeirong[i];
    	msg[i].children[4].innerHTML=arrayType[i];
    }
    
    var sfTypeArray = {1:'告知短信',2:'定期检查',3:'康复指导',4:'家庭护理',5:'节日问候'};
    
   function xinzen(){
	  var sfTypeStr = $('#sfType').val();
	  var sfType;
	  var x;
	  for(x in sfTypeArray){
		  if(sfTypeArray[x] == sfTypeStr){
			  sfType = x;
		  }
	  }
  
   	  var blCode = '${dxSuiFang.blCode}';
   	  var blDianHua = '${dxSuiFang.blDianhua}';
	  
	  var sfDateStr = $('#sfDate').val();
	  var dxBiaoTi = $('#dxBiaoTi').val();
	  var dxNeiRong = $('#dxNeiRong').val();

	  $.ajax({
            url:'duanxin_xinzen_ajax.do',
            type:'POST', //GET
            data:{
            	blCode:blCode,
            	blDianHua:blDianHua,
            	sfType:sfType,
            	dxBiaoTi:dxBiaoTi,
            	dxNeiRong:dxNeiRong
            },
            dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
            success:function(data,textStatus,jqXHR){
            	var msg = $("#msg").children();

                var arrayDate = new Array(); 
                var arrayBiaoti = new Array(); 
                var arrayNeirong = new Array();
                var arrayType = new Array();
                <c:forEach items="${dxSuiFangList}" var="t">  
                arrayDate.push("${t.sfStartDate}"); //js中可以使用此标签，将EL表达式中的值push到数组中  
                arrayBiaoti.push("${t.dxBiaoti}");
                arrayNeirong.push("${t.dxNeirong}");
                if("${t.sfType}"==1){
                	arrayType.push("告知短信");
                }
                if("${t.sfType}"==2){
                	arrayType.push("定期检查");
                }
                if("${t.sfType}"==3){
                	arrayType.push("康复指导");
                }
                if("${t.sfType}"==4){
                	arrayType.push("家庭护理");
                }
                if("${t.sfType}"==5){
                	arrayType.push("节日问候");
                }
                </c:forEach>  

                for(i=0;i<"${dxSuiFangList.size()}";i++){
                	msg[i].children[1].innerHTML=arrayDate[i];
                	msg[i].children[2].innerHTML=arrayBiaoti[i];
                	msg[i].children[3].innerHTML=arrayNeirong[i];
                	msg[i].children[4].innerHTML=arrayType[i];
                }
            }
        });
    }

</script>
</body>
</html>
