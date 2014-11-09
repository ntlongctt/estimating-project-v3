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
<link href="resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />

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



<script src="resources/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

<script type="text/javascript">
            $(function() {
                $("#example1").dataTable();
                $('#example2').dataTable({
                    "bPaginate": true,
                    "bLengthChange": false,
                    "bFilter": false,
                    "bSort": true,
                    "bInfo": true,
                    "bAutoWidth": false
                });
            });
        </script>


</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<jsp:include page="head-banner.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<jsp:include page="left-banner.jsp" />

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h3>Detail of project: <i>project A</i></h3>
			</section>

			<!-- Main content -->
			<section class="content">

				<h2 class="text-info">Infomation:</h2>
				
				
				
				<div class="box box-warning">
                                <div class="box-header">
                                    <h3 class="box-title">General Elements</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <form role="form">
										<div class="row">
													<div class="col-sm-5 col-sm-offset-1">
														<div class="form-group">
															<label>Project's Name:</label> <input type="text"
																class="form-control" id="exampleInputEmail1"
																placeholder="Project A" disabled="disabled">
														</div>
													</div>
													<div class="col-sm-5 col-sm-offset-1">
														<div class="form-group">
															<label>Type:</label> <input type="text"
																class="form-control" id="exampleInputEmail1"
																placeholder="Web base" disabled="disabled">
														</div>
													</div>
													<div class="col-sm-5 col-sm-offset-1">
														<div class="form-group">
															<label>Version:</label> <input type="text"
																class="form-control" id="exampleInputEmail1"
																placeholder="6" disabled="disabled">
														</div>
													</div>
													<div class="col-sm-5 col-sm-offset-1">
														<div class="form-group">
															<label>Description:</label> <input type="text"
																class="form-control" id="exampleInputEmail1"
																placeholder="abc xyz" disabled="disabled">
														</div>
													</div>
												</div>
												<button class="btn  btn-default">Edit</button>
												
												<div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">List project version</h3>                                    
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>No. </th>
                                                <th>Use case point</th>
                                                <th>Function Point</th>
                                                <th>Date create</th>
                                                <th>Detail</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                   
                                            <tr>
                                                <td>V1</td>
                                                <td>128</td>
                                                <td>230,45</td>
                                                <td>12/3/2014</td>
                                                <th><a href="ucp-detail.html">detail</a></th>
                                            </tr>
                                            <tr>
                                                <td>V2</td>
                                                <td>130</td>
                                                <td>Null</td>
                                                <td>19/4/2014</td>
                                                <th><a href="ucp-detail.html">detail</a></th>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>No. </th>
                                                <th>Use case point</th>
                                                <th>Function Point</th>
                                                <th>Date create</th>
                                                <th>Detail</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                            
                            
                                    </form>
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