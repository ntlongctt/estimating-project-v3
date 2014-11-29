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
		var length = data['listFp'].length;
		var lstFp = data['listFp'];
		var projectName = data['projectName'];
		$('#lstFuntionPoint').html('');
		for (var i = 0; i < length; i++) {
			$('#lstFuntionPoint').append($('<option>', {
			    value: lstFp[i].fpID,
			    text: lstFp[i].tenProject,
			}));
		}
		document.getElementById("projectName").innerHTML = "Project : " + "<b style='color:#3c8dbc'>" + projectName + "</b>"; 
	})
}

function selectUCP() {
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