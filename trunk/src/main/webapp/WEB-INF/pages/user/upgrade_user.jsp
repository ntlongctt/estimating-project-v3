<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'	name='viewport'>
<meta name="viewport" content="width=device-width" />
<title>Estimating software</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
<script src="resources/js/myjs/upgrade.js" type="text/javascript"></script>




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

				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Upgrage VIP member</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form role="form">

						<div class="box-body">
							<div class="form-group">
							<label><input type="radio" id="rf5_1" name="rf5"
								value="0" class="minimal-red" checked /> Visa</label>
							<label><input type="radio" id="rf5_2" name="rf5"
								value="0" class="minimal-red" checked /> MasterCard</label>
							<label><input type="radio" id="rf5_2" name="rf5"
								value="0" class="minimal-red" checked /> Discover</label>
							<label><input type="radio" id="rf5_4" name="rf5"
								value="0" class="minimal-red" checked /> American Express</label>
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									id="exampleInputPassword1" placeholder="Card Number">
							</div>
						</div>
				</div>
				<!-- /.box-body -->

				<div class="box-footer">
					<button type="submit" class="btn btn-primary" onclick="upgrade();">Submit</button>
				</div>
	
				</form>
				
	</section>
	<!-- /.content -->
	</aside>
	<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>
</html>