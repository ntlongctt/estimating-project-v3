$(document).ready(
function() {
editTableUCP();
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