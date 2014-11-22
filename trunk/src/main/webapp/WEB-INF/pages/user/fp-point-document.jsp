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
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/jquery.steps.css">
<script src="resources/js/modernizr-2.6.2.min.js"></script>
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.cookie-1.3.1.js"></script>
<script src="resources/js/jquery.steps.js"></script>

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<link href="resources/css/docs.min.css" rel="stylesheet">
<script src="resources/js/myjs/ie-emulation-modes-warning.js"></script>



</head>
<body class="skin-blue">
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


				<div class="col-md-3">
					<!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">                
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                  
                    <ul class="sidebar-menu">
                        <li>
                            <a href="home.html">
                                <i class="fa fa-home"></i> <span>Home</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Estimating Methods</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="usecasepoint.html"><i class="fa fa-angle-double-right"></i>Use Case Point</a></li>
                                <li><a href="functionpoint.html"><i class="fa fa-angle-double-right"></i>Function Point</a></li>
                              <!--   <li><a href="#"><i class="fa fa-angle-double-right"></i>COCOMO</a></li> -->
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-book"></i>
                                <span>Documentation</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="ucp-document.html"><i class="fa fa-angle-double-right"></i> UseCase Point Method</a></li>
                                <li><a href="function-point-document.html"><i class="fa fa-angle-double-right"></i> Function Point Method</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Legislation</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="manage-project.html">
                                <i class="fa fa-sitemap"></i> <span>My Project</span>
                            </a>
                        </li>
                        <li>
                            <a href="contact-us.html">
                                <i class="fa fa-envelope-o"></i> <span>Contact us</span>
                            </a>
                        </li>
                         <li>
                            <a href="user-profile.html">
                                <i class="fa fa-user"></i> <span>My profiles</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-info-circle"></i> <span>About us</span>
                            </a>
                        </li>
                       
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
				</div>

				<div class="col-md-9" role="main"></div>

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>