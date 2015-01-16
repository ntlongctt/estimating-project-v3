<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta name="viewport" content="width=device-width" />
<title>Estimating software</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

<link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- DATA TABLES -->
<link href="resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->

<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="resources/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>

<script src="resources/js/jquery.inputmask.bundle.js"></script>
<script>
$(document).ready(function(){
    $(":input").inputmask();
});
</script>

</head>
<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
	<jsp:include page="head-banner.jsp" />
	
		<jsp:include page="left-banner.jsp" />
	<aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Manage your projects
                    </h1>
                </section>

                <!-- Main content -->
                <section class="content">
					<!-- Search project	regular user -->
					<c:if test="${usertype ==1 }">
					<div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="collapseListGroupHeading3">
					        <h4 class="panel-title">
					          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup3" aria-expanded="false" aria-controls="collapseListGroup3">
					           Search project
					          </a>
					        </h4>
					    </div>
					    <div id="collapseListGroup3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading3">

					    	<div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab_1" data-toggle="tab">Use case Point</a></li>
                                <li class=""><a href="#tab_2" data-toggle="tab">Function Point</a></li>
                            </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_1">
                                        <div class="box box-warning">
				                            <div class="box-body">
				                            	<table class="table">
			                                        <tbody>
			                                        <tr>
			                                            <th style="width: 200px">Use case Point from:</th>
			                                            <th style="width: 50px"><span><input type="text" name="ucp_from" id="ucp_from"></span></th>
			                                            <th style="width: 50px">to:</th>
			                                            <th style="width: 40px"><span><input type="text" name="ucp_to" id="ucp_to"></span></th>
			                                        </tr>
			                                        <tr>
			                                            <th style="width: 200px">Total Hour:</th>
			                                            <th style="width: 50px"><span><input type="text" name="total_ucp_hour_from" id="total_ucp_hour_from"></span></th>
			                                            <th style="width: 50px">to:</th>
			                                            <th style="width: 40px"><span><input type="text" name="total_ucp_hour_to" id="total_ucp_hour_to"></span></th>
			                                        </tr>
			                                        <tr>
			                                            <th style="width: 200px">Cost of project:</th>
			                                            <th style="width: 50px"><span><input type="text" name="ucp_coat_from" id="ucp_coat_from"></span></th>
			                                            <th style="width: 50px">to:</th>
			                                            <th style="width: 40px"><span><input type="text" name="ucp_coat_to" id="ucp_coat_to"></span></th>
			                                        </tr>
			                                    	</tbody>
			                                    </table>
			                                    <input type="button" class="btn btn-primary btn-flat" value="Search" style="margin-top: 10px" name="btn_ucp_search" id="btn_ucp_search" onclick="searchRegular();" >
				                            </div>
										</div>
                                    </div><!-- /.tab-pane -->
                                    <!-- Search Function Point -->
                                    <div class="tab-pane" id="tab_2">
                                        <div class="box box-primary">
				                            <div class="box-body">
				                            	<table class="table">
			                                        <tbody>
			                                        <tr>
			                                            <th style="width: 200px">Function Point from:</th>
			                                            <th style="width: 50px"><span><input type="text" name="fp_from" id="fp_from"></span></th>
			                                            <th style="width: 50px">to:</th>
			                                            <th style="width: 40px"><span><input type="text" name="fp_to" id="fp_to"></span></th>
			                                        </tr>
			                                        <tr>
			                                            <th style="width: 200px">Total Hour:</th>
			                                            <th style="width: 50px"><span><input type="text" name="fp_total_hour_from" id="fp_total_hour_from"></span></th>
			                                            <th style="width: 50px">to:</th>
			                                            <th style="width: 40px"><span><input type="text" name="fp_total_hour_to" id="fp_total_hour_to"></span></th>
			                                        </tr>
			                                        <tr>
			                                            <th style="width: 200px">Cost of project:</th>
			                                            <th style="width: 50px"><span><input type="text" name="fp_coat_from" id="fp_coat_from"></span></th>
			                                            <th style="width: 50px">to:</th>
			                                            <th style="width: 40px"><span><input type="text" name="fp_coat_to" id="fp_coat_to"></span></th>
			                                        </tr>
			                                    	</tbody>
			                                    </table>
			                                    <input type="button" onclick="searchRegular()" class="btn btn-primary btn-flat" value="Search" style="margin-top: 10px" name="btn_fp_search">
				                            </div>
										</div>
                                    </div><!-- /.tab-pane -->
                                    <div class="tab-pane" id="tab_3">
                                        
                                    </div><!-- /.tab-pane -->
                                </div><!-- /.tab-content -->
                        	</div>
					    </div>
				    </div>
				    </c:if>

					<!-- Search project for vip -->
					<c:if test="${usertype ==2 }">
					<div class="panel panel-default">
						    <div class="panel-heading" role="tab" id="collapseListGroupHeading">
						        <h4 class="panel-title">
						          <a class="collapsed" data-toggle="collapse" href="#collapseListGroup" aria-expanded="false" aria-controls="collapseListGroup">
						           Search project 
						          </a>
						        </h4>
						    </div>
						    <div id="collapseListGroup" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading">

						    	<div class="nav-tabs-custom">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_5" data-toggle="tab">Usecase Point</a></li>
                                    <li class=""><a href="#tab_4" data-toggle="tab">Function Point</a></li>
                                    <li class=""><a href="#tab_6" data-toggle="tab">Statistic</a></li>
                                    
                                   <!--  <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
                                </ul>
	                                <div class="tab-content">
	                                    <div class="tab-pane active" id="tab_5">
	                                        <div class="box box-warning">
					                            <div class="box-body">
					                            	<table class="table">
				                                        <tbody>
				                                        <tr>
				                                            <th style="width: 200px">Use Case Point from:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_ucp_from" id="vip_ucp_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_ucp_to" id="vip_ucp_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Total Hour:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_ucp_total_hour_from" id="vip_ucp_total_hour_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_ucp_total_hour_to" id="vip_ucp_total_hour_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Cost of project:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_ucp_coat_from" id="vip_ucp_coat_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_ucp_coat_to" id="vip_ucp_coat_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Use Case Point Weight:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_ucpw_from" id="vip_ucpw_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_ucpw_to" id="vip_ucpw_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Function Point Weight:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_fpw_from" id="vip_fpw_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_fpw_to" id="vip_fpw_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Technical Complexity Factor:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_tcf_from" id="vip_tcf_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_tcf_to" id="vip_tcf_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Inviromental factors:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_ecf_from" id="vip_ecf_from" ></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input name="vip_ecf_to" id="vip_ecf_to" type="text"></span></th>
				                                        </tr>
				                                    	</tbody>
				                                    </table>
				                                    <input type="button" class="btn btn-primary btn-flat" value="Search" style="margin-top: 10px" onclick="searchVip();">
													<br>
				                                    <!-- List project -->
									                
									                    <div class="box-body table-responsive">
									                        <table id="projectTableVip" class="table table-bordered table-striped">
									                            <thead style="background-color: #3c8dbc; color: white">
									                                <tr>
									                                    <th>Name</th>
									                                    <th>Type</th>
									                                    <th>Description</th>
									                                    <th>Version</th>
									                                    <th>Use Case</th>
									                                    <th>Hour</th>
									                                </tr>
									                            </thead>
									                            <tbody>                                   
									                            </tbody>
									                        </table>
									                    </div>
									            
					                            </div>
											</div>
	                                    </div><!-- /.tab-pane -->
	                                    <div class="tab-pane" id="tab_4">
	                                        <div class="box box-primary">
					                            <div class="box-body">
					                            	<table class="table">
				                                        <tbody>
				                                        <tr>
				                                            <th style="width: 200px">Function Point from:</th>
				                                            <th style="width: 50px"><span><input name="vip_fp_from" id="vip_fp_from" type="text"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_fp_to" id="vip_fp_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Total Hour:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_fp_total_hour_from" id="vip_fp_total_hour_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_fp_total_hour_to" id="vip_fp_total_hour_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Coat of project:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_fp_coat_from" id="vip_fp_coat_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_fp_coat_to" id="vip_fp_coat_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">User Output:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_uop_from" id="vip_uop_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_uop_to" id="vip_uop_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">User Input:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_uip_from" id="vip_uop_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_uip_to" id="vip_uop_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">User Inquiries:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_uinp_from" id="vip_uip_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_uinp_to" id="vip_uip_to"></span></th>
				                                        </tr>
				                                        <tr>
				                                            <th style="width: 200px">Internal Logical File:</th>
				                                            <th style="width: 50px"><span><input type="text " name="vip_ilf_from" id="vip_ilf_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_ilf_to" id="vip_ilf_to"></span></th>
				                                        </tr>
				                                         <tr>
				                                            <th style="width: 200px">External Interface File:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_eif_from" id="vip_eif_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_eif_to" id="vip_eif_to"></span></th>
				                                        </tr>
				                                         <tr>
				                                            <th style="width: 200px">Relative Complexity Adjustment Factor:</th>
				                                            <th style="width: 50px"><span><input type="text" name="vip_racf_from" id="vip_racf_from"></span></th>
				                                            <th style="width: 50px">to:</th>
				                                            <th style="width: 40px"><span><input type="text" name="vip_racf_to" id="vip_racf_to"></span></th>
				                                        </tr>
				                                    	</tbody>
				                                    </table>
				                                    <input type="button" class="btn btn-primary btn-flat" value="Search" style="margin-top: 10px">
					                            </div>
											</div>
	                                    </div><!-- /.tab-pane -->
	                                    <div class="tab-pane" id="tab_6">
	                                        
	                                    </div><!-- /.tab-pane -->
	                                </div><!-- /.tab-content -->
                            	</div>
						    </div>
					    </div>
					    </c:if>


					<!-- List project -->
	                <div class="box">
	                    <div class="box-header">
	                        <h3 class="box-title">List project</h3>                                    
	                    </div>
	                    <div class="box-body table-responsive">
	                        <table id="projectTable" class="table table-bordered table-striped">
	                            <thead style="background-color: #3c8dbc; color: white">
	                                <tr>
	                                    <th>Name</th>
	                                    <th>Type</th>
	                                    <th>Description</th>
	                                    <th style="width: 100px">View Detail</th>
	                                </tr>
	                            </thead>
	                            <tbody>                                   
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
           		<div class="col-md-12">
                            <!-- Custom Tabs (Pulled to the right) -->
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs pull-right">
                        <li class="active"><a href="#tab_1-1" data-toggle="tab">Use case Point</a></li>
                        <li ><a href="#tab_2-2" data-toggle="tab">Function Point</a></li>
                        <li class="pull-left header" id="projectName"><a class="fa fa-th"></a> </li>
                    </ul>
                    <div class="tab-content">
                        <!-- Use case Point -->
                        <div class="tab-pane active" id="tab_1-1">
                            <div class=	"panel box ">
						<div class="box-header">
							<div class="box-title" style="width: 600px" >
							<h3>Use Case Point Detail</h3>
								<hr>
								<p style="font-size: 15px!important;">Select version of project</p>
								<!-- select version-->
		                        <select class="form-control" id="selectUCP">
                                </select>
		                        <input type="button" name="btn_update_servion" id="btn_update_servion" onclick="updUcpVersion();" class="btn btn-primary btn-flat" value="Update version" style="margin-top: 10px">
		                        <input type="button" class="btn btn-success btn-flat" name="btn_create_version" onclick="createNewUcpVersion();" id="btn_create_version" value="Create new version" style="margin-top: 10px">
									
							</div>
							
							<c:if test="${message !='' }">
								<div style="color: red" id="errorMessage"><p>${message }</p></div>
							</c:if>
						</div>
					
					<div >
						<div class="box-body" style="margin-top: -30px">
								<div class="box-body">
									<table>
										<tr> 
											<td style="width: 150px"><label>Total point</label> <input name="ucp_total_point" id="ucp_total_point" type="text" class="form-control" style="width: 100px" placeholder="5" readonly="true"></td>
											<td style="width: 150px"><label>Total hour</label> <input type="text" class="form-control" id="ucp_total_hour" name="ucp_total_hour" style="width: 100px" placeholder="5" readonly="true"></td>
											<td style="width: 150px"><label>Cost </label> <input type="text" name="ucp_cost" id="ucp_cost" class="form-control" placeholder="7" style="width: 100px" readonly="true"></td>
										</tr>
									</table>
                                </div>
<table class="table table-striped table-hover">
<tbody>
		<tr>
			<td style="text-align: left; font-weight: bold; color: black">Use Case Point Weight</td>
			<td style="width: 70%">
				<div id="panelUCPWeight" style="text-align: left; display: none; margin-top: 10px;">
					 <table style="width: 600px">
					 	<tr class="info">
					 		<th>Simple: <input type="text" name="ucp_ucpw_simple" id="ucp_ucpw_simple" style="width: 40px; height: 20px" ></th>
					 		<th>Average: <input type="text" name="ucp_ucpw_Average" id="ucp_ucpw_Average" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Complex: <input type="text" name="ucp_ucpw_Complex" id="ucp_ucpw_Complex" style="width: 40px; height: 20px" placeholder="7"></th>
					 	</tr>			
					</table>
				</div>
			</td>
			<td style="text-align: right"><a id="editUCPWeight">Edit</a>
			</td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Function Point Weight</td>
			<td style="width: 70%">
				<div id="panelFPWeigth" style="text-align: left; display: none; margin-top: 10px;">
					 <table  style="width: 600px">
					 	<tr class="info">
					 		<th>Simple: <input type="text" name="ucp_fp_Simple" id="ucp_fp_Simple" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Average: <input type="text" name="ucp_fp_Average" id="ucp_fp_Average" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Complex: <input type="text" name="ucp_fp_Complex" id="ucp_fp_Complex" style="width: 40px; height: 20px" placeholder="7"></th>
					 	</tr>			
					 </table>
				</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editFPWeigth">Edit</a></td>
		</tr>

		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Technical Complexity Factor</td>
			<td style="width: 70%">
					<div id="panelTCF" style="text-align: left; display: none; margin-top: 10px;">
						<table  style="width: 600px">
							<tr class="info">
								<th>Distributed system:</th>
								<th>Performance objectives:</th>
								<th>End User efficiency:</th>
							</tr>
							<tr>
								<th><input name="ucp_Distributed" id="ucp_Distributed" type="text" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Performance" id="ucp_Performance" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_efficiency" id="ucp_efficiency" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>
							<tr class="info">
								<th>Complex Processing:</th>
								<th>Reusable Code:</th>
								<th>Ease of Installation:</th>
							</tr>
							<tr>
								<th><input type="text" name="ucp_Processing" id="ucp_Processing" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Reusable" id="ucp_Reusable" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Installation" id="ucp_Installation" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>
							<tr class="info">
								<th>Ease of Use:</th>
								<th>Portable:</th>
								<th>Ease of Change:</th>
							</tr>		
							<tr>
								<th><input type="text" name="ucp_ease_of_use" id="ucp_ease_of_use" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Portable" id="ucp_Portable" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Change" id="ucp_Change" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>
							<tr class="info">
								<th>Concurrent Use:</th>
								<th>Special Security:</th>
								<th>Access for Third Parties:></th>
							</tr>	
							<tr>
								<th><input type="text" name="ucp_Concurrent" id="ucp_Concurrent" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Security" id="ucp_Security" style="width: 40px; height: 20px" placeholder="7"></th>
								<th><input type="text" name="ucp_Third_Parties" id="ucp_Third_Parties" style="width: 40px; height: 20px" placeholder="7"></th>
							</tr>	
							<tr>
								<th>Training Needs:<input type="text" name="ucp_Training" id="ucp_Training" style="width: 40px; height: 20px" placeholder="7"></th>

							</tr>
						</table>
					</div>
			</td>
			<td style="text-align: right; width: 10%" ><a id="editTCF">Edit</a></td>
		</tr>
		
		<tr>
			<td	style="text-align: left; font-weight: bold; color: black; width: 20%">Inviromental factors </td>
			<td style="width: 70%">
					<div id="panelIFC" style="text-align: left; display: none; margin-top: 10px;">
						<div class="" style="width: 320px;">
							<table style="width: 600px" >
								<tr class="info">
									<th>Familiar Development Process:</th>
									<th><input type="text" name="ucp_Familiar" id="ucp_Familiar" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Application Experience:</th>
									<th><input type="text" name="ucp_Application" id="ucp_Application" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
								<tr class="info">
									<th>Object-Oriented Experience:</th>
									<th><input type="text" name="ucp_Object_Oriented" id="ucp_Object_Oriented" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Lead Analyst Capability:</th>
									<th><input type="text" name="ucp_Lead_Analyst" id="ucp_Lead_Analyst" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
								<tr class="info">
									<th>Motivation:</th>
									<th><input type="text" name="ucp_Motivation" id="ucp_Motivation" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Stable Requirements:</th>
									<th><input type="text" name="ucp_Stable_Requirements" id="ucp_Stable_Requirements" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
								<tr class="info">
									<th>Part-time Staff:</th>
									<th><input type="text" name="ucp_Part_time" id="ucp_Part_time" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
									<th>Difficult Programming Language:</th>
									<th><input type="text" name="ucp_Difficult" id="ucp_Difficult" style="width: 40px; height: 20px" placeholder="7" data-inputmask="'mask': '5'"></th>
								</tr>
							</table>
						</div>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editIFC">Edit</a></td>
		</tr>
		
		<tr>
			<td	style="text-align: left; font-weight: bold; color: black; width: 20%">Payment</td>
			<td style="width: 70%">		
					<div id="panelPayment" style="text-align: left; display: none; margin-top: 10px;">
						<div class="" style="width: 320px;">
							<label>Wage per hour</label> <input type="text" name="ucp_Wage_per_hour" id="ucp_Wage_per_hour" class="form-control"placeholder="5">
						</div>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editPayment">Edit</a></td>
		</tr>
</tbody>
</table>
						</div>
					</div>
		</div>
                               </div>
                               <!-- Funtion, Point -->
                               <div class="tab-pane" id="tab_2-2">
                            <div class=	"panel box ">
						<div class="box-header">
							<div class="box-title" style="width: 600px" >
							<h3>Function Point Detail</h3>
								<hr>
								<p style="font-size: 15px!important;">Select version of project</p>
								<!-- select version-->
		                        <select class="form-control" id="selectFP">
	                             </select>
		                        <input type="button" class="btn btn-primary btn-flat" value="Update version" onclick="updFpVersion()" style="margin-top: 10px">
		                        <input type="button" class="btn btn-success btn-flat" value="Create new version" onclick="createNewFpVersion()" style="margin-top: 10px">
							</div>
						</div>
					
					<div >
						<div class="box-body" style="margin-top: -30px">
								<div class="box-body">
									<table>
										<tr>
											<td style="width: 150px"><label>Total point</label> <input name="fp_Total_point" id="fp_Total_point" type="text" class="form-control" style="width: 100px" placeholder="" readonly="true"></td>
											<td style="width: 150px"><label>Total hour</label> <input type="text" name="fp_Total_hour" id="fp_Total_hour" class="form-control" style="width: 100px" placeholder="" readonly="true"></td>
											<td style="width: 150px"><label>Cost </label> <input type="text" name="fp_Cost" id="fp_Cost" class="form-control" placeholder="" style="width: 100px" readonly="true"></td>
										</tr>
									</table>
                                </div>
<table class="table table-striped table-hover">
<tbody>
		<tr>
			<td style="text-align: left; font-weight: bold; color: black">User Input</td>
			<td style="width: 70%">
				<div id="panelUserInput" style="text-align: left; display: none; margin-top: 10px;">
					 <table style="width: 600px">
					 	<tr class="info">
					 		<th>Simple: <input type="text" name="fp_User_Input_Simple" id="fp_User_Input_Simple" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Average: <input type="text" name="fp_User_Input_Average" id="fp_User_Input_Average" style="width: 40px; height: 20px" placeholder="7"></th>
					 		<th>Complex: <input type="text" name="fp_User_Input_Complex" id="fp_User_Input_Complex" style="width: 40px; height: 20px" placeholder="7"></th>
					 	</tr>			
					</table>
				</div>
			</td>
			<td style="text-align: right"><a id="editUserInput">Edit</a>
			</td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">User Output</td>
			<td style="width: 70%">
					<div id="panelUserOutput" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" name="fp_User_Output_Simple" id="fp_User_Output_Simple" style="width: 40px; height: 20px" placeholder=""></th>
						 		<th>Average: <input type="text" name="fp_User_Output_Average" id="fp_User_Output_Average" style="width: 40px; height: 20px" placeholder=""></th>
						 		<th>Complex: <input type="text" name="fp_User_Output_Complex" id="fp_User_Output_Complex" style="width: 40px; height: 20px" placeholder=""></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editUserOuput">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">User Online Query</td>
			<td style="width: 70%">
					<div id="panelUserOnlineQuery" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" name="fp_User_Online_Query_Simple" id="fp_User_Online_Query_Simple" style="width: 40px; height: 20px" placeholder=""></th>
						 		<th>Average: <input type="text" name="fp_User_Online_Query_Average" id="fp_User_Online_Query_Average" style="width: 40px; height: 20px" placeholder=""></th>
						 		<th>Complex: <input type="text" name="fp_User_Online_Query_Complex" id="fp_User_Online_Query_Complex" style="width: 40px; height: 20px" placeholder=""></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editUserOnlineQuery">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Internal Logical File</td>
			<td style="width: 70%">
					<div id="panelInternalLogicalFile" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" name="fp_Internal_Logical_File_Simple" id="fp_Internal_Logical_File_Simple" style="width: 40px; height: 20px" placeholder=""></th>
						 		<th>Average: <input type="text" name="fp_Internal_Logical_File_Average" id="fp_Internal_Logical_File_Average" style="width: 40px; height: 20px" placeholder=""></th>
						 		<th>Complex: <input type="text" name="fp_Internal_Logical_File_Complex" id="fp_Internal_Logical_File_Complex" style="width: 40px; height: 20px" placeholder=""></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editInternalLogicalFile">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">External Interface File</td>
			<td style="width: 70%">
					<div id="panelExternalInterfaceFile" style="text-align: left; display: none; margin-top: 10px;">
						 <table  style="width: 600px">
						 	<tr class="info">
						 		<th>Simple: <input type="text" name="fp_External_Interface_Simple" id="fp_External_Interface_Simple" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Average: <input type="text" name="fp_External_Interface_Average" id="fp_External_Interface_Average" style="width: 40px; height: 20px" placeholder="7"></th>
						 		<th>Complex: <input type="text" name="fp_External_Interface_Complex" id="fp_External_Interface_Complex" style="width: 40px; height: 20px" placeholder="7"></th>
						 	</tr>			
						 </table>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editExternalInterfaceFile">Edit</a></td>
		</tr>
		
		<tr>
			<td style="text-align: left; font-weight: bold; color: black; width: 20%">Relative Complexity Adjustment Factor</td>
			<td style="width: 70%">
					<div id="panelRCAF" style="text-align: left; display: none; margin-top: 10px;">
						 <table  class="table">
						 	<tr class="info">
								<th>Requirement for reliable backup and recovery:</th>
								<th><input type="text" name="rcf_1" id="rcf_1" style="width: 40px; height: 20px" placeholder="" data-inputmask="'mask': '5'"></th>
								<th>Requirement for data communication:</th>
								<th><input type="text" name="rcf_2" id="rcf_2" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of distributed processing:</th>
								<th><input type="text" name="rcf_3" id="rcf_3" style="width: 40px; height: 20px" placeholder="" data-inputmask="'mask': '5'"></th>
								<th>Performance requirements:</th>
								<th><input type="text" name="rcf_4" id="rcf_4" style="width: 40px; height: 20px" placeholder="" data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Expected operational environment:</th>
								<th><input type="text" name="rcf_5" id="rcf_5" style="width: 40px; height: 20px" placeholder="" data-inputmask="'mask': '5'"></th>
								<th>Extent of online data entries:</th>
								<th><input type="text" name="rcf_6" id="rcf_6" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of multi-screen or multi-operation online data input:</th>
								<th><input type="text" name="rcf_7" id="rcf_7" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
								<th>Extent of online updating of master files:</th>
								<th><input type="text" name="rcf_8" id="rcf_8" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of complex inputs, outputs, online queries and files:</th>
								<th><input type="text" name="rcf_9" id="rcf_9" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
								<th>Extent of complex data processing:</th>
								<th><input type="text" name="rcf_10" id="rcf_10" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent that currently developed code can be designed for reuse:</th>
								<th><input type="text" name="rcf_11" id="rcf_11" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
								<th>Extent of conversion and installation included in the design:</th>
								<th><input type="text" name="rcf_12" id="rcf_12" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
							</tr>
							<tr class="info">
								<th>Extent of multiple installations in an organizationand variety of 
								customer organizations:</th>
								<th><input type="text" name="rcf_13" id="rcf_13" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
								<th>Extent of change and focus on ease of use:</th>
								<th><input type="text" name="rcf_14" id="rcf_14" style="width: 40px; height: 20px" placeholder=""data-inputmask="'mask': '5'"></th>
							</tr>		
						 </table>
						 </div>
					</td>
			<td style="text-align: right; width: 10%"><a id="editRCAF">Edit</a></td>
		</tr>
			
		<tr>
			<td	style="text-align: left; font-weight: bold; color: black; width: 20%">Payment</td>
			<td style="width: 70%">		
					<div id="panelPaymentFP" style="text-align: left; display: none; margin-top: 10px;">
						<div class="" style="width: 320px;">
							<label>Wage per hour</label> <input type="text" name="fp_Wage_per_hour" id="fp_Wage_per_hour" class="form-control"placeholder="">
						</div>
					</div>
			</td>
			<td style="text-align: right; width: 10%"><a id="editPaymentFP">Edit</a></td>
		</tr>
</tbody>
</table>
						</div>
					</div>
		</div>
                               </div>
  </div>
    </div>
</div>  
                </section>
            </aside>
<script src="resources/js/myjs/manage-project.js" type="text/javascript"></script>

</body>
</html>