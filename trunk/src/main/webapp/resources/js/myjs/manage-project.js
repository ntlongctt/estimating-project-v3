  // Declaration global variable
  var easy, medium, difficult, simple, average, complex, distributed, performance, endUserefficiency, complexProcessing;
  var reusableCode, easeofInstallation, easeofUse, portable, easeofChange, concurrentUse, accessforThirdParties, specialSecurity;
  var trainingNeeds, familiarwithDevelopmentProcess, applicationExperience, objectOrientedExperience, leadAnalystCapability;
  var motivation, stableRequirements, parttimeStaff, difficulProgrammingLanguage;
  var projectID2;
  var json;
  
$(document).ready(
function() {
editTableUCP();
editTableFP();
selectUCP();



$("#projectTable > tbody").html("");

$.getJSON("listprojectjson.json",{ajax : 'true'},
	function(data) {
		var length = data.length;
		for (var i = 0; i < length; i++) {
			var content = "<tr>";
			content += "<td>" + data[i].name + "</td>";
			content += "<td>" + data[i].type + "</td>";
			content += "<td>" + data[i].description	+ "</td>";
			content += "<td>"
					+ "<a type='button' onclick='viewVersion(" + data[i].projectID + ")' style='color:green; font-weight: bold;' >Detail</a>"
					+ "</td>";
			content += "</tr>";
			$("#projectTable > tbody").append(content);
		}
		$("#projectTable").dataTable();
	})
})

//Get value use case point input
function getValueUseCase(){
	alert("ID: " + projectID2);
	easy = $('#ucp_ucpw_simple').val();
	medium = $('#ucp_ucpw_Average').val();
	difficult = $('#ucp_ucpw_Complex').val();
	
	simple = $('#ucp_fp_Simple').val();
	average = $('#ucp_fp_Average').val();
	complex = $('#ucp_fp_Complex').val();
		 
	distributed = $('#ucp_Distributed').val();
	performance = $('#ucp_Performance').val();
	endUserefficiency = $('#ucp_efficiency').val();
	complexProcessing = $('#ucp_Processing').val();
	reusableCode = $('#ucp_Reusable').val();
	easeofInstallation = $('#ucp_Installation').val();
	easeofUse = $('#ucp_ease_of_use').val();
	portable = $('#ucp_Portable').val();
	easeofChange = $('#ucp_Change').val();
	concurrentUse = $('#ucp_Concurrent').val();
	accessforThirdParties = $('#ucp_Security').val();
	specialSecurity = $('#ucp_Third_Parties').val();
	trainingNeeds = $('#ucp_Training').val();
		 		
	familiarwithDevelopmentProcess = $('#ucp_Familiar').val();
	applicationExperience = $('#ucp_Application').val();
	objectOrientedExperience = $('#ucp_Object_Oriented').val();
	leadAnalystCapability = $('#ucp_Lead_Analyst').val();
	motivation = $('#ucp_Motivation').val();
	stableRequirements = $('#ucp_Stable_Requirements').val();
	parttimeStaff = $('#ucp_Part_time').val();
	difficulProgrammingLanguage = $('#ucp_Difficult').val();

	ucpId= $("#selectUCP option:selected").val();
	
	json ={"easy" :easy, "medium" :medium, "difficult" :difficult, "simple" :simple, "average" :average, "complex" :complex , "distributed" :distributed, "performance" :performance, "endUserefficiency" :endUserefficiency,"complexProcessing" :complexProcessing,"reusableCode" :reusableCode, "easeofInstallation" :easeofInstallation, "easeofUse" :easeofUse, "portable" :portable,"easeofChange" :easeofChange, "concurrentUse" :concurrentUse, "accessforThirdParties" :accessforThirdParties, "specialSecurity" :specialSecurity,"trainingNeeds" :trainingNeeds, "familiarwithDevelopmentProcess" :familiarwithDevelopmentProcess,"applicationExperience" :applicationExperience, "objectOrientedExperience" :objectOrientedExperience, "leadAnalystCapability" :leadAnalystCapability, "motivation" :motivation,"stableRequirements" :stableRequirements, "parttimeStaff" :parttimeStaff, "difficulProgrammingLanguage" :difficulProgrammingLanguage, "projectID" :projectID2, "ucpId" :ucpId };
	
}

// Event collapse for UCP
function editTableUCP() {
	$("#editUCPWeight").click(function() {
		var value = document.getElementById("editUCPWeight").innerHTML;
		if (value == "Edit") {
			$("#panelUCPWeight").slideDown("slow");
			document.getElementById("editUCPWeight").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelUCPWeight").slideUp("slow");
			document.getElementById("editUCPWeight").innerHTML = "Edit";
		}
	});

	$("#editFPWeigth").click(function() {
		var value = document.getElementById("editFPWeigth").innerHTML;
		if (value == "Edit") {
			$("#panelFPWeigth").slideDown("slow");
			document.getElementById("editFPWeigth").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelFPWeigth").slideUp("slow");
			document.getElementById("editFPWeigth").innerHTML = "Edit";
		}
	});

	$("#editTCF").click(function() {
		var value = document.getElementById("editTCF").innerHTML;
		if (value == "Edit") {
			$("#panelTCF").slideDown("slow");
			document.getElementById("editTCF").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelTCF").slideUp("slow");
			document.getElementById("editTCF").innerHTML = "Edit";
		}
	});

	$("#editIFC").click(function() {
		var value = document.getElementById("editIFC").innerHTML;
		if (value == "Edit") {
			$("#panelIFC").slideDown("slow");
			document.getElementById("editIFC").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelIFC").slideUp("slow");
			document.getElementById("editIFC").innerHTML = "Edit";
		}
	});

	$("#editPayment").click(function() {
		var value = document.getElementById("editPayment").innerHTML;
		if (value == "Edit") {
			$("#panelPayment").slideDown("slow");
			document.getElementById("editPayment").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelPayment").slideUp("slow");
			document.getElementById("editPayment").innerHTML = "Edit";
		}
	});
}

//Create new UCP version
function createNewUcpVersion(){
	alert("new");
	getValueUseCase();
	
	$.ajax({
		    url: "new-ucpVersion.json",
		    type: 'POST',
		    dataType: 'json',
		    data: JSON.stringify(json),
		    contentType: 'application/json',
		    mimeType: 'application/json',
		    success: function(data) {
		    	alert("Save successful!")
		    	
		   	},
		    error: function() {   
		    	alert("Error! Please try again.")
		    }
		}); 
}

// Update current UCP version
function updUcpVersion(){
	alert("new");
	getValueUseCase();
	
	$.ajax({
		    url: "update-ucpVersion.json",
		    type: 'POST',
		    dataType: 'json',
		    data: JSON.stringify(json),
		    contentType: 'application/json',
		    mimeType: 'application/json',
		    success: function(data) {
		    	alert("Save successful!")
		    	
		   	},
		    error: function() {   
		    	alert("Error! Please try again.")
		    }
		}); 
}

//Event collapse for FP
function editTableFP() {
	$("#editUserInput").click(function() {
		var value = document.getElementById("editUserInput").innerHTML;
		if (value == "Edit") {
			$("#panelUserInput").slideDown("slow");
			document.getElementById("editUserInput").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelUserInput").slideUp("slow");
			document.getElementById("editUserInput").innerHTML = "Edit";
		}
	});

	$("#editUserOuput").click(function() {
		var value = document.getElementById("editUserOuput").innerHTML;
		if (value == "Edit") {
			$("#panelUserOutput").slideDown("slow");
			document.getElementById("editUserOuput").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelUserOutput").slideUp("slow");
			document.getElementById("editUserOuput").innerHTML = "Edit";
		}
	});

	$("#editUserOnlineQuery").click(function() {
		var value = document.getElementById("editUserOnlineQuery").innerHTML;
		if (value == "Edit") {
			$("#panelUserOnlineQuery").slideDown("slow");
			document.getElementById("editUserOnlineQuery").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelUserOnlineQuery").slideUp("slow");
			document.getElementById("editUserOnlineQuery").innerHTML = "Edit";
		}
	});

	$("#editInternalLogicalFile").click(function() {
		var value = document.getElementById("editInternalLogicalFile").innerHTML;
		if (value == "Edit") {
			$("#panelInternalLogicalFile").slideDown("slow");
			document.getElementById("editInternalLogicalFile").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelInternalLogicalFile").slideUp("slow");
			document.getElementById("editInternalLogicalFile").innerHTML = "Edit";
		}
	});
	
	$("#editExternalInterfaceFile").click(function() {
		var value = document.getElementById("editExternalInterfaceFile").innerHTML;
		if (value == "Edit") {
			$("#panelExternalInterfaceFile").slideDown("slow");
			document.getElementById("editExternalInterfaceFile").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelExternalInterfaceFile").slideUp("slow");
			document.getElementById("editExternalInterfaceFile").innerHTML = "Edit";
		}
	});
	
	$("#editRCAF").click(function() {
		var value = document.getElementById("editRCAF").innerHTML;
		if (value == "Edit") {
			$("#panelRCAF").slideDown("slow");
			document.getElementById("editRCAF").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelRCAF").slideUp("slow");
			document.getElementById("editRCAF").innerHTML = "Edit";
		}
	});

	$("#editPaymentFP").click(function() {
		var value = document.getElementById("editPaymentFP").innerHTML;
		if (value == "Edit") {
			$("#panelPaymentFP").slideDown("slow");
			document.getElementById("editPaymentFP").innerHTML = "Hide";
		}
		if (value == "Hide") {
			$("#panelPaymentFP").slideUp("slow");
			document.getElementById("editPaymentFP").innerHTML = "Edit";
		}
	});
}

// View version for ucp and fp when click Detail in Table List Project 
function viewVersion(projectID) {
	$.getJSON(projectID + "/viewDetailFpUc.json", {ajax : 'true'}, 
	function(data) {
		projectID2 = projectID;
		// Function
		var length1 = data['listFp'].length;
		var lstFp = data['listFp'];
		var projectName = data['projectName'];
		$('#lstFuntionPoint').html('');
		for (var i = 0; i < length1; i++) {
			$('#lstFuntionPoint').append($('<option>', {
			    value: lstFp[i].fpID,
			    text: lstFp[i].tenProject,
			}));
		}
		
		// Use case
		var length2 = data['listUc'].length;
		var lstUp = data['listUc'];
		var projectName = data['projectName'];
		$('#selectUCP').html('');
		for (var i = 0; i < length2; i++) {
			$('#selectUCP').append($('<option>', {
			    value: lstUp[i].ucpId,
			    text: lstUp[i].tenProject,
			}));
			
		}
		$('#ucp_ucpw_simple').val(lstUp[0].easy);
		$('#ucp_ucpw_Average').val(lstUp[0].medium);
	 	$('#ucp_ucpw_Complex').val( lstUp[0].difficult);
	 	$('#ucp_fp_Simple').val( lstUp[0].simple);
	 	$('#ucp_fp_Average').val( lstUp[0].average);
	 	$('#ucp_fp_Complex').val( lstUp[0].complex);
	 	$('#ucp_Distributed').val( lstUp[0].distributed);
	 	$('#ucp_Performance').val( lstUp[0].performance);
	 	$('#ucp_efficiency').val( lstUp[0].endUserefficiency);
	 	$('#ucp_Processing').val( lstUp[0].complexProcessing);
	 	$('#ucp_Reusable').val( lstUp[0].reusableCode);
	 	$('#ucp_Installation').val( lstUp[0].easeofInstallation);
	 	$('#ucp_ease_of_use').val( lstUp[0].easeofUse);
	 	$('#ucp_Portable').val( lstUp[0].portable);
	 	$('#ucp_Change').val( lstUp[0].easeofChange);
	 	$('#ucp_Concurrent').val( lstUp[0].concurrentUse);
	 	$('#ucp_Security').val( lstUp[0].accessforThirdParties);
	 	$('#ucp_Third_Parties').val( lstUp[0].specialSecurity);
	 	$('#ucp_Training').val( lstUp[0].trainingNeeds);

	 	$('#ucp_Familiar').val( lstUp[0].familiarwithDevelopmentProcess);
	 	$('#ucp_Application').val( lstUp[0].applicationExperience);
	 	$('#ucp_Object_Oriented').val( lstUp[0].objectOrientedExperience);
	 	$('#ucp_Lead_Analyst').val( lstUp[0].leadAnalystCapability);
	 	$('#ucp_Motivation').val( lstUp[0].motivation);
	 	$('#ucp_Stable_Requirements').val( lstUp[0].stableRequirements);
	 	$('#ucp_Part_time').val( lstUp[0].parttimeStaff);
	 	$('#ucp_Difficult').val( lstUp[0].difficulProgrammingLanguage);

	 	$('#ucp_total_point').val( lstUp[0].totalUCP);
	 	$('#ucp_total_hour').val("20");
	 	$('#ucp_cost').val( lstUp[0].totalUCP * 20);



		
		
		document.getElementById("projectName").innerHTML = "Project : " + "<b style='color:#3c8dbc'>" + projectName + "</b>"; 
	})
	
}

function selectUCP() {
	$('#selectUCP').change(function () {
	    var optionSelected = $(this).find("option:selected");
	    var valueSelected  = optionSelected.val();
	    var textSelected   = optionSelected.text();
	    alert(valueSelected);
	    $.ajax({
	        type : "GET",
	        url : "show-ucpDetail/" + valueSelected + ".json",
	        dataType: 'json',
	    	
	    	contentType: 'application/json',
	    	mimeType: 'application/json',
	         success : function(response) {
	         	alert(response.easy);
	         	 $('#ucp_ucpw_simple').val( response.easy);
	         	 $('#ucp_ucpw_Average').val( response.medium);
	         	 $('#ucp_ucpw_Complex').val( response.difficult);
	         	 $('#ucp_fp_Simple').val( response.simple);
	         	 $('#ucp_fp_Average').val( response.average);
	         	 $('#ucp_fp_Complex').val( response.complex);
	         	 $('#ucp_Distributed').val( response.distributed);
	         	 $('#ucp_Performance').val( response.performance);
	         	 $('#ucp_efficiency').val( response.endUserefficiency);
	         	 $('#ucp_Processing').val( response.complexProcessing);
	         	 $('#ucp_Reusable').val( response.reusableCode);
	         	 $('#ucp_Installation').val( response.easeofInstallation);
	         	 $('#ucp_ease_of_use').val( response.easeofUse);
	         	 $('#ucp_Portable').val( response.portable);
	         	 $('#ucp_Change').val( response.easeofChange);
	         	 $('#ucp_Concurrent').val( response.concurrentUse);
	         	 $('#ucp_Security').val( response.accessforThirdParties);
	         	 $('#ucp_Third_Parties').val( response.specialSecurity);
	         	 $('#ucp_Training').val( response.trainingNeeds);

	         	 $('#ucp_Familiar').val( response.familiarwithDevelopmentProcess);
	         	 $('#ucp_Application').val( response.applicationExperience);
	         	 $('#ucp_Object_Oriented').val( response.objectOrientedExperience);
	         	 $('#ucp_Lead_Analyst').val( response.leadAnalystCapability);
	         	 $('#ucp_Motivation').val( response.motivation);
	         	 $('#ucp_Stable_Requirements').val( response.stableRequirements);
	         	 $('#ucp_Part_time').val( response.parttimeStaff);
	         	 $('#ucp_Difficult').val( response.difficulProgrammingLanguage);

	         	 $('#ucp_total_point').val( response.totalUCP);
	         	 $('#ucp_total_hour').val("20");
	         	 $('#ucp_cost').val( response.totalUCP * 20);
	         }
	     });
	});
	
}

function selectFP() {
	$('#selectUCP').change(function () {
	    var optionSelected = $(this).find("option:selected");
	    var valueSelected  = optionSelected.val();
	    var textSelected   = optionSelected.text();
	    alert("Value: " + valueSelected +" Text: " +textSelected);
	});
}

// Search regular
function searchRegular() {
	var ucp_from, ucp_to, total_ucp_hour_from, total_ucp_hour_to, ucp_coat_from, ucp_coat_to;
	ucp_from = $('#ucp_from').val();
	ucp_to = $('#ucp_to').val();
	total_ucp_hour_from = $('#total_ucp_hour_from').val();
	total_ucp_hour_to = $('#total_ucp_hour_to').val();
	ucp_coat_from = $('#ucp_coat_from').val();
	ucp_coat_to = $('#ucp_coat_to').val();
	
	
	var json ={"ucp_from" :ucp_from, "ucp_to" :ucp_to, "total_ucp_hour_from" :total_ucp_hour_from, "total_ucp_hour_to" :total_ucp_hour_to,"ucp_coat_from" :ucp_coat_from, "ucp_coat_to" :ucp_coat_to};
	$("#projectTable > tbody").html("");
	$.ajax({
	    url: "search-usecasepoint.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	var length = data.length;
	    	if(length > 0) {
	    		for (var i = 0; i < length; i++) {
	    			var content = "<tr>";
	    			content += "<td>" + data[i].name + "</td>";
	    			content += "<td>" + data[i].type + "</td>";
	    			content += "<td>" + data[i].description	+ "</td>";
	    			content += "<td>"
	    					+ "<a type='button' onclick='viewVersion(" + data[i].projectID + ")' style='color:green; font-weight: bold;' >Detail</a>"
	    					+ "</td>";
	    			content += "</tr>";
	    			$("#projectTable > tbody").append(content);
	    		}
	    		$("#projectTable").dataTable();
	    	}
	   	},
	    error: function() {    	
	    }
	}); 	
	
}

//Search regular function
function serarchRegularFp(){

	var fp_from, fp_to, fp_total_hour_from, fp_total_hour_to, fp_coat_from, fp_coat_to;
	fp_from = $('#fp_from').val();
	fp_to = $('#fp_to').val();
	fp_total_hour_from = $('#fp_total_hour_from').val();
	fp_total_hour_to = $('#fp_total_hour_to').val();
	fp_coat_from = $('#fp_coat_from').val();
	fp_coat_to = $('#fp_coat_to').val();

	var json = {"fp_from" :fp_from,"fp_to" :fp_to,"fp_total_hour_from" :fp_total_hour_from,"fp_total_hour_to" :fp_total_hour_to,"fp_coat_from" :fp_coat_from,"fp_coat_to" :fp_coat_to};
	$("#projectTable > tbody").html("");
	$.ajax({
	    url: "search-functionpoint.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	var length = data.length;
	    	if(length > 0) {
	    		for (var i = 0; i < length; i++) {
	    			var content = "<tr>";
	    			content += "<td>" + data[i].name + "</td>";
	    			content += "<td>" + data[i].type + "</td>";
	    			content += "<td>" + data[i].description	+ "</td>";
	    			content += "<td>"
	    					+ "<a type='button' onclick='viewVersion(" + data[i].projectID + ")' style='color:green; font-weight: bold;' >Detail</a>"
	    					+ "</td>";
	    			content += "</tr>";
	    			$("#projectTable > tbody").append(content);
	    		}
	    		$("#projectTable").dataTable();
	    	}
	   	},
	    error: function() {    	
	    }
	}); 		
}


//Search vip
function searchVip() {
	var vip_ucp_from, vip_ucp_to, vip_ucp_total_hour_from, vip_ucp_total_hour_to, vip_ucp_coat_from, 
	vip_ucp_coat_to, vip_ucpw_from, vip_ucpw_to, vip_fpw_from, vip_fpw_to;
	var vip_tcf_from, vip_tcf_to, vip_ecf_from, vip_ecf_to;
	vip_ucp_from = $('#vip_ucp_from').val();
	vip_ucp_to = $('#vip_ucp_to').val();
	vip_ucp_total_hour_from = $('#vip_ucp_total_hour_from').val();
	vip_ucp_total_hour_to = $('#vip_ucp_total_hour_to').val();
	vip_ucp_coat_from = $('#vip_ucp_coat_from').val();
	vip_ucp_coat_to = $('#vip_ucp_coat_to').val();
	vip_ucpw_from = $('#vip_ucpw_from').val();
	vip_ucpw_to = $('#vip_ucpw_to').val();
	vip_fpw_from = $('#vip_fpw_from').val();
	vip_fpw_to = $('#vip_fpw_to').val();
	vip_tcf_from = $('#vip_tcf_from').val();
	vip_tcf_to = $('#vip_tcf_to').val();
	vip_ecf_from = $('#vip_ecf_from').val();
	vip_ecf_to = $('#vip_ecf_to').val();
	
	var json ={"vip_ucp_from" :vip_ucp_from, "vip_ucp_to" :vip_ucp_to, "vip_ucp_total_hour_from" :vip_ucp_total_hour_from, "vip_ucp_total_hour_to" :vip_ucp_total_hour_to,"vip_ucp_coat_from" :vip_ucp_coat_from, "vip_ucp_coat_to" :vip_ucp_coat_to , "vip_ucpw_from" :vip_ucpw_from, "vip_ucpw_to" :vip_ucpw_to,"vip_fpw_from" :vip_fpw_from,"vip_fpw_to" :vip_fpw_to,"vip_tcf_from" :vip_tcf_from, "vip_tcf_to" :vip_tcf_to, "vip_ecf_from" :vip_ecf_from,"vip_ecf_to" :vip_ecf_to};
	$("#projectTable > tbody").html("");
	$.ajax({
	    url: "search-usecasepoint-vip.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	var length = data.length;
	    	if(length > 0) {
	    		for (var i = 0; i < length; i++) {
	    			var content = "<tr>";
	    			content += "<td>" + data[i].name + "</td>";
	    			content += "<td>" + data[i].type + "</td>";
	    			content += "<td>" + data[i].description	+ "</td>";
	    			content += "<td>"
	    					+ "<a type='button' onclick='viewVersion(" + data[i].projectID + ")' style='color:green; font-weight: bold;' >Detail</a>"
	    					+ "</td>";
	    			content += "</tr>";
	    			$("#projectTable > tbody").append(content);
	    		}
	    		$("#projectTable").dataTable();
	    	}
	   	},
	    error: function() {    	
	    }
	}); 	
	
}

