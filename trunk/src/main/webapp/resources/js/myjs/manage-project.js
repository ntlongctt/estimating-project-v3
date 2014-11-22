$(document).ready(
function() {
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
					+ "<input type='button' onclick='viewDetailProject(" + data[i].projectID + ")' class='btn btn-primary btn-flat' value='Detail' />"
					+ "</td>";
			content += "</tr>";
			$("#projectTable > tbody").append(content);
		}
		$("#projectTable").dataTable();
	})
})

// 
function viewDetailProject(projectID) {
	$.getJSON(projectID + "/viewDetailFpUc.json", {ajax : 'true'}, 
	function(data) {
		var length = data['listFp'].length;
		var lstFp = data['listFp'];
		for (var i = 0; i < length; i++) {
			$('#lstFuntionPoint').append($('<option>', {
			    value: lstFp[i].fpID,
			    text: lstFp[i].tenProject,
			}));
		}
	})
}
