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
<!-- <link href="resources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" /> -->
<link href="resources/css/ionicons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/jquery.steps.css">

<link rel="stylesheet" type="text/css" href="resources/css/font-awesome/css/font-awesome.min.css" />

 <script type="text/javascript" src="resourcesjs/jquery-1.10.2.min.js"></script>

<script src="resources/js/modernizr-2.6.2.min.js"></script>
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.cookie-1.3.1.js"></script>
<script src="resources/js/jquery.steps.js"></script>

<script	src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>


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

		
			<div class="container">
				<div class="row">
			      <div class="col-md-12">
			        <div class="well well-sm">
			          <form class="form-horizontal" method="post">
			          <fieldset>
			            <legend class="text-center header">Contact us</legend>    
			            
			            <div class="form-group">              
			              <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>              
			              <div class="col-md-8">
			                <input id="fname" name="name" type="text" placeholder="First Name" class="form-control">
			              </div>
			            </div>    
			               <div class="form-group">
			              <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
			              <div class="col-md-8">
			                <input id="lname" name="name" type="text" placeholder="Last Name" class="form-control">
			              </div>
			            </div>    
			            
			            <div class="form-group">
			              <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
			              <div class="col-md-8">
			                <input id="email" name="email" type="text" placeholder="Email Address" class="form-control">
			              </div>
			            </div>
			
			              <div class="form-group">
			              <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
			              <div class="col-md-8">
			                <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control">
			              </div>
			            </div>
			    
			            <div class="form-group">
			              <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
			              <div class="col-md-8">
			                <textarea class="form-control" id="message" name="message" placeholder="Enter your massage for us here. We will get back to you within 2 business days." rows="7"></textarea>
			              </div>
			            </div>
			    
			            <div class="form-group">
			              <div class="col-md-12 text-center">
			                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
			              </div>
			            </div>
			          </fieldset>
			          </form>
			        </div>
			      </div>
				</div>
			</div>
			
			<style>
			    .header {
			        color:#36A0FF;
			        font-size:27px;
			        padding:10px;
			    }
			    .bigicon {
			        font-size:35px;
			        color:#36A0FF;
			    }
			</style>
			<!-- Contact Form - END -->
			

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>