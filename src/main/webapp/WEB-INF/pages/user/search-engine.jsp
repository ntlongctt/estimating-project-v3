<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<meta name="viewport" content="width=device-width" />
<title>Estimating software</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet"
	type="text/css" />
<link href="resources/font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/wizard/css/gsdk-base.css" rel="stylesheet"
	type="text/css">

<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/jquery.steps.css">
<script src="resources/js/modernizr-2.6.2.min.js"></script>
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.cookie-1.3.1.js"></script>
<script src="resources/js/jquery.steps.js"></script>

<script	src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/wizard/js/wizard.js"></script>
<script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script>
<script src="resources/wizard/js/jquery.bootstrap.wizard.js"></script>



</head>
<body class="skin-blue">
    <script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>
	<!-- header logo: style can be found in header.less -->
	<jsp:include page="head-banner.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<jsp:include page="left-banner.jsp" />

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>

			<!-- Main content -->
			<section class="content">

			
			
			<div class="box">
                 <div class="box-header">
                     <h3 class="box-title">Responsive Hover Table</h3>
                     
                 </div><!-- /.box-header -->
                 <div class="box-body table-responsive no-padding">
                     <table class="table table-hover ">
                         <tbody>
                         <tr>
                             <th rowspan="2"><h4><b>Name</b></h4></th>
                             <th rowspan="2"><h4><b>Version</b></h4></th>
                             <th rowspan="2"><h4><b>Type</b></h4></th>
                             <th rowspan="2"><h4><b>Description</b></h4></th>
                             <th colspan="2"><h5><b><span style="margin-left: 130px">Coat of Project</span></b></h5></th>
                         </tr>
                         <tr>
	                         <th>With UseCase Point</th>
	                         <th>With Function Point</th>
                         </tr>
                         
                         <tr>
                             <td>Project A</td>
                             <td>Project A-v1</td>
                             <td>Web</td>
                             <td>Project A do something</td>
                             <td>11,200,000 VND</td>
                             <td>11,500,000 VND</td>
                         </tr>
                         <tr>
                            <td>Project A</td>
                             <td>Project A-v1</td>
                             <td>Web</td>
                             <td>Project A do something</td>
                                         <td>11,200,000 VND</td>
                             <td>11,500,000 VND</td>
                         </tr>
                         <tr>
             <td>Project A</td>
                             <td>Project A-v1</td>
                             <td>Web</td>
                             <td>Project A do something</td>
                             <td>11,200,000 VND</td>
                             <td>11,500,000 VND</td>
                         </tr>
                         <tr>
                             <td>Project A</td>
                             <td>Project A-v1</td>
                             <td>Web</td>
                             <td>Project long do something</td>
                             <td>11,200,000 VND</td>
                             <td>12,500,000 VND</td>
                         </tr>
                     </tbody></table>
                    
                 </div><!-- /.box-body -->
             </div>
			

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>