<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<title>Online Test</title>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link rel="stylesheet" type="text/css" href="<c:url value="/metronic/assets/global/plugins/font-awesome/css/font-awesome.min.css" />" />
<link href="<c:url value="/metronic/assets/global/plugins/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/assets/global/plugins/bootstrap/css/bootstrap.min.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/assets/global/plugins/uniform/css/uniform.default.css" />" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="<c:url value="/metronic/assets/admin/pages/css/profile.css" />" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/metronic/assets/global/plugins/select2/select2.css" />" />
<link rel="stylesheet" type="text/css" href="<c:url value="/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />" />
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="<c:url value="/metronic/assets/global/css/components.css" />" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/assets/global/css/plugins.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/assets/admin/layout3/css/layout.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/metronic/assets/admin/layout3/css/themes/default.css" />" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<c:url value="/metronic/assets/admin/layout3/css/custom.css" />" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<!-- BEGIN HEADER -->
	<div class="page-header">
		<!-- BEGIN HEADER TOP -->
		<div class="page-header-top">
			<div class="container">
				<div class="page-logo">
					<a href="#"><img
						src="<c:url value="/metronic/assets/logo.png" />" height="70px;"
						alt="logo" class="logo-default"></a>
				</div>
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler"></a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<div class="top-menu">
					<ul class="nav navbar-nav pull-right">
						<!-- BEGIN USER LOGIN DROPDOWN -->
						<li class="dropdown dropdown-user dropdown-dark"><a
							href="javascript:;" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true"> <span
								class="username username-hide-mobile">Welcome
									${sessionScope.username} !</span>
						</a>
							<ul class="dropdown-menu dropdown-menu-default">
								<%-- <li><a href="<c:url value="/user/profile" />"> <i
										class="icon-user"></i> My Profile
								</a></li>
								<li class="divider"></li>
								<li><a href="<c:url value="/register" />"> <i
										class="icon-key"></i> Register
								</a></li> --%>
								<li class="divider"></li>
								<li><a href="<c:url value="/logout" />"> <i
										class="icon-key"></i> Log Out
								</a></li>
							</ul></li>
						<!-- END USER LOGIN DROPDOWN -->
					</ul>
				</div>
				<!-- END TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- END HEADER TOP -->
		<!-- BEGIN HEADER MENU -->
		<div class="page-header-menu">
			<div class="container">
				<!-- BEGIN MEGA MENU -->
				<!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
				<!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
				<tiles:insertAttribute name="menu" ignore="true"></tiles:insertAttribute>
				<!-- END MEGA MENU -->
			</div>
		</div>
		<!-- END HEADER MENU -->
	</div>
	<!-- END HEADER -->

	<!-- BEGIN PAGE CONTAINER -->
	<div class="page-container">
		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<div class="row margin-top-10">
					<div class="col-md-12">
						<!-- BEGIN PROFILE SIDEBAR -->
<!-- 						<div class="profile-sidebar" style="width: 250px;"> -->
<!-- 							PORTLET MAIN -->
<!-- 							<div class="portlet light profile-sidebar-portlet"> -->
<!-- 								<div class="panel-heading"> -->
<!-- 									<h4>Left Sidebar</h4> -->
<!-- 								</div> -->
<!-- 								<div class="panel-body"></div> -->
<!-- 							</div> -->
<!-- 							END PORTLET MAIN -->
<!-- 						</div> -->
<!-- 						<div class="profile-sidebar" style="width: 250px;">
							PORTLET MAIN
							<div class="portlet light profile-sidebar-portlet">
								<div class="panel-heading">
									<h4>Left Sidebar</h4>
								</div>
								<div class="panel-body"></div>
							</div>
							END PORTLET MAIN
						</div> -->
						<!-- END BEGIN PROFILE SIDEBAR -->
						<!-- BEGIN PROFILE CONTENT -->
						<div class="profile-content">
							<div class="row">
								<div class="col-md-12">
									<tiles:insertAttribute name="content"></tiles:insertAttribute>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT -->
	</div>
	<!-- END PAGE CONTAINER -->

	<!-- BEGIN PRE-FOOTER -->
	<div class="page-prefooter">
		<div class="container"></div>
	</div>
	<!-- END PRE-FOOTER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="container">2017 &copy; All Rights Reserved.</div>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="<c:url value="/metronic/assets/global/plugins/jquery.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery-migrate.min.js" />" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<c:url value="/metronic/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/bootstrap/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery.blockui.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery.cokie.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/uniform/jquery.uniform.min.js" />" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<c:url value="/metronic/assets/global/plugins/select2/select2.min.js" />" type="text/javascript" ></script>
<script src="<c:url value="/metronic/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js" />"  type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js" />"  type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" />" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<c:url value="/metronic/assets/global/scripts/metronic.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/admin/layout3/scripts/layout.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/admin/layout3/scripts/demo.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/admin/pages/scripts/table-editable.js" />"></script>
<script src="<c:url value="/metronic/assets/admin/pages/scripts/login.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/admin/pages/scripts/form-samples.js" />" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			Login.init();
			Demo.init();  
			TableEditable.init();
			FormSamples.init();
			
			$(".btnDelUser").live("click",function(){
				var id = $(this).val();
				$.ajax({
					url: '/onlinetest/admin/deleteUser?userid=' + id,
					method: 'POST'
					}).done(function(data) {					
				});
				$("#user"+id).remove();
			});
			
			$(".btnAssignCoach").live("click",function(){
				var coachId = $(".coachId").find('option:selected').val() ;
				var studentId = $(".studentId").find('option:selected').val() ;
				$.ajax({
					url: '/onlinetest/admin/assign?coachId=' + coachId +'&studentId='+studentId,
					method: 'POST'
					}).done(function(data) {
						if(data == "ok"){
							$(".alert-warning").hide();
							$(".alert-success").show();
						}else{
							$(".alert-warning").show();
							$(".alert-success").hide();
						}
				});

			});

			$(".btnDelStudentRecord").live("click",function(){
				var id = $(this).val();
				$.ajax({
					url: '/onlinetest/admin/deleteAssign?userid=' + id,
					method: 'POST'
					}).done(function(data) {					
				});
				$("#user"+id).remove();
			});
			
			$(".btnDelCat").live("click",function(){
				var id = $(this).val();
				$.ajax({
					url: '/onlinetest/admin/deleteCategory?id=' + id,
					method: 'POST'
					}).done(function(data) {					
				});
				$("#category"+id).remove();
			});
			
			$(".btnDelSubCat").live("click",function(){
				var id = $(this).val();
				$.ajax({
					url: '/onlinetest/admin/deleteSubCategory?id=' + id,
					method: 'POST'
					}).done(function(data) {					
				});
				$("#subCategory"+id).remove();
			});
			
			$(".btnNext").live("click",function(){
				var qNum = parseInt($(this).attr("id"));
				setAnswer(qNum, 1);
			});
			
			$(".btnPrev").live("click",function(){
				var qNum = parseInt($(this).attr("id"));
				setAnswer(qNum, 2);
				$(".btnPrev").hide();
			});
			
			function setAnswer(arg1, arg2) {
				
				
				var qNum = parseInt(arg1);
				var qNewNum = 0;
				
				if(parseInt(qNum) == 1){
					$(".btnPrev").hide();
				}else{
					$(".btnPrev").show();
				}
				
				if(parseInt(arg2) == 1){
					
					qNewNum = parseInt(qNum)+1;
					$(".btnNext").attr("id", qNum+1);
					$(".btnPrev").attr("id", qNum+1);
				}else{
					qNewNum = parseInt(qNum)-1;
					$(".btnNext").attr("id", qNum-1);
					$(".btnPrev").attr("id", qNum-1);
				}
				
				var CurrentQuestion = {}; //The Object to Send Data Back to the Controller
				CurrentQuestion.questionNum = qNum;
			    CurrentQuestion.newQuestionNum = qNewNum;
				CurrentQuestion.answer = $('input:radio[name=optionsRadios]:checked').val();
				$.ajax({
					type: 'POST',
					url: '/onlinetest/test/setAnswer',
					contentType : 'application/json; charset=utf-8',
				    dataType : 'json',
	                data: JSON.stringify(CurrentQuestion),
	                success: function (data) {
	                	$("#description").empty();
	                	$("#description").append(data.description);
	                	var str = "<label><input type='radio' name='question'  value='A'";
	                	if(data.answer == "A"){
	                		str+=" checked ";
	                	}
	                	str += ">" + data.q1+"</label>";
	                	
	                	str += "<label><input type='radio' name='question'  value='B'";
	                	if(data.answer == "B"){
	                		str+=" checked ";
	                	}
	                	str += ">" + data.q2+"</label>";
	                	
	                	str += "<label><input type='radio' name='question'  value='C'";
	                	if(data.answer == "C"){
	                		str+=" checked ";
	                	}
	                	str += ">" + data.q3+"</label>";
	                	
	                	str += "<label><input type='radio' name='question'  value='D'";
	                	if(data.answer == "D"){
	                		str+=" checked ";
	                	}
	                	str += ">" + data.q4+"</label>";
	                	
	                	str += "<label><input type='radio' name='question'  value='E'";
	                	if(data.answer == "E"){
	                		str+=" checked ";
	                	}
	                	str += ">" + data.q5+"</label>";
	                	
	                	str += "<label><input type='radio' name='question'  value='F'";
	                	if(data.answer == "F"){
	                		str+=" checked ";
	                	}
	                	str += ">" + data.q6+"</label>";
	                	
						$("#qList").empty();
	                	$("#qList").append(str).fadeIn(10000);
	                	Metronic.init(); // init metronic core components
	        			Layout.init(); // init current layout
	        			Demo.init();  
	                },error: function(jqXHR, status, err){
	                    alert(jqXHR.responseText);
	                }
				});
			}
			
		});
		
		
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>