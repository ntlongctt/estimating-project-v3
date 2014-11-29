$(document).ready(
	
function() {
	
getListShareProject();
getListProjectByOtherUser()

// Get list project to select option
$.getJSON("listprojectjson.json",{ajax : 'true'},
	function(data) {
		var length = data.length;
		for (var i = 0; i < length; i++) {
			$('#share-project').append($('<option>', {
			    value: data[i].projectID,
			    text: data[i].name,
			}));
		}
	})

})

// Get list share project in TO OTHER USER
function getListShareProject(){
	$("#projectShareToOtherTable > tbody").html("");

	$.getJSON("list-share-project.json",{ajax : 'true'},
		function(data) {
			var length = data.length;
			for (var i = 0; i < length; i++) {
				var content = "<tr>";
				content += "<td>";
				content += "<input type='checkbox' class='inbox-checkbox' id='listCheckbox" + data[i].idshare_project + "'  name='listCheckbox' value='"
						+ data[i].idshare_project
						+ "'>"
						+ "</td>";
				content += "<td>" + data[i].projectName + "</td>";
				content += "<td>" + data[i].type + "</td>";
				content += "<td>" + data[i].description	+ "</td>";
				content += "<td>" + data[i].share_user + "</td>";
				/*content += "<td>"
					+ "<a type='button' data-toggle='modal' data-target='#myModal-edit-share' onclick='viewModal(" + data[i].idshare_project + ")' style='color:green; font-weight: bold;' >Edit</a>"
					+ "</td>";*/
				content += "</tr>";
				$("#projectShareToOtherTable > tbody").append(content);
			}
			$("#projectShareToOtherTable").dataTable();
		})
		
}

function shareproject(){
	var maProject = $('#share-project').val();
	var share_user = $('#txt-user-share').val();
	var json = {"maProject" :maProject, "share_user" :share_user};
	$.ajax({
	    url: "add-share-project.json",
	    type: 'POST',
	    dataType: 'json',
	    data: JSON.stringify(json),
	    contentType: 'application/json',
	    mimeType: 'application/json',
	    success: function(data) {
	    	alert("Share successful!")
	    	$("#txt-user-share").val("");
	    	getListShareProject();
	   	},
	    error: function() {    	
	    }
	}); 	     
}

function discardShare() {
	 // Get all checkbox checked
	 var sel = $('input[type=checkbox]:checked').map(function(_, el) {
        return $(el).val();
	 }).get();
	
	 $.ajax({
         type : "POST",
         url : "discard-share/" + sel + ".html",
         success : function(response) {
             alert("Success");
             // Refresh page
             location.reload();	
         }
     });
}

function getListProjectByOtherUser() {
$("#projectTable > tbody").html("");

$.getJSON("getListProjectByOtherUser.json",{ajax : 'true'},
	function(data) {
		var length = data.length;
		for (var i = 0; i < length; i++) {
			var content = "<tr>";
			content += "<td>" + data[i].projectName + "</td>";
			content += "<td>" + data[i].type + "</td>";
			content += "<td>" + data[i].description	+ "</td>";
			content += "<td>" + data[i].own_user + "</td>";
			content += "<td>"
				+ "<a type='button' onclick='viewVersion(" + data[i].maProject + ")' style='color:green; font-weight: bold;' >Detail</a>"
				+ "</td>";
		content += "</tr>";
			content += "</tr>";
			$("#projectTable > tbody").append(content);
		}
		$("#projectTable").dataTable();
	})    
}
