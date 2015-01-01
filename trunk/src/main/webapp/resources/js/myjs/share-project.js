$(document).ready(
	
function() {
	
getListShareProject();
getListProjectByOtherUser()
selectUCP()

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

function viewVersion(projectID){
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
		
		//Detail value
		//Use Case Point Weight
		document.getElementById("ucpw_simple").innerHTML = lstUp[0].easy;
		document.getElementById("ucpw_Average").innerHTML = lstUp[0].medium;
		document.getElementById("ucpw_Complex").innerHTML = lstUp[0].difficult;
		//Function Point Weightct
		document.getElementById("fpw_Simple").innerHTML = lstUp[0].simple;
		document.getElementById("fpw_Average").innerHTML = lstUp[0].average;
		document.getElementById("fpw_Complex").innerHTML = lstUp[0].complex;
		//Technical Complexity Factor 
		document.getElementById("ucp_tcf_1").innerHTML = lstUp[0].distributed;
		document.getElementById("ucp_tcf_2").innerHTML = lstUp[0].performance;
		document.getElementById("ucp_tcf_3").innerHTML = lstUp[0].endUserefficiency;
		document.getElementById("ucp_tcf_4").innerHTML = lstUp[0].complexProcessing;
		document.getElementById("ucp_tcf_5").innerHTML = lstUp[0].reusableCode;
		document.getElementById("ucp_tcf_6").innerHTML = lstUp[0].easeofInstallation;
		document.getElementById("ucp_tcf_7").innerHTML = lstUp[0].easeofUse;
		document.getElementById("ucp_tcf_8").innerHTML = lstUp[0].portable;
		document.getElementById("ucp_tcf_9").innerHTML = lstUp[0].easeofChange;
		document.getElementById("ucp_tcf_10").innerHTML = lstUp[0].concurrentUse;
		document.getElementById("ucp_tcf_11").innerHTML = lstUp[0].accessforThirdParties;
		document.getElementById("ucp_tcf_12").innerHTML = lstUp[0].specialSecurity;
		document.getElementById("ucp_tcf_13").innerHTML = lstUp[0].trainingNeeds;
		//Environmental Complexity Factor
		document.getElementById("ucp_ecf_1").innerHTML = lstUp[0].familiarwithDevelopmentProcess;
		document.getElementById("ucp_ecf_2").innerHTML = lstUp[0].applicationExperience;
		document.getElementById("ucp_ecf_3").innerHTML = lstUp[0].objectOrientedExperience;
		document.getElementById("ucp_ecf_4").innerHTML = lstUp[0].leadAnalystCapability;
		document.getElementById("ucp_ecf_5").innerHTML = lstUp[0].motivation;
		document.getElementById("ucp_ecf_6").innerHTML = lstUp[0].stableRequirements;
		document.getElementById("ucp_ecf_7").innerHTML = lstUp[0].parttimeStaff;
		document.getElementById("ucp_ecf_8").innerHTML = lstUp[0].difficulProgrammingLanguage;

	});


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
	    	data: JSON.stringify(json),
	    	contentType: 'application/json',
	    	mimeType: 'application/json',
	         success : function(response) {
	         	//Use Case Point Weight
	         	alert("long");
				document.getElementById("ucpw_simple").innerHTML = response.easy;
				document.getElementById("ucpw_Average").innerHTML = response.medium;
				document.getElementById("ucpw_Complex").innerHTML = response.difficult;
				//Function Point Weightct
				document.getElementById("fpw_Simple").innerHTML = response.simple;
				document.getElementById("fpw_Average").innerHTML = response.average;
				document.getElementById("fpw_Complex").innerHTML = response.complex;
				//Technical Complexity Factor 
				document.getElementById("ucp_tcf_1").innerHTML = response.distributed;
				document.getElementById("ucp_tcf_2").innerHTML = response.performance;
				document.getElementById("ucp_tcf_3").innerHTML = response.endUserefficiency;
				document.getElementById("ucp_tcf_4").innerHTML = response.complexProcessing;
				document.getElementById("ucp_tcf_5").innerHTML = response.reusableCode;
				document.getElementById("ucp_tcf_6").innerHTML = response.easeofInstallation;
				document.getElementById("ucp_tcf_7").innerHTML = response.easeofUse;
				document.getElementById("ucp_tcf_8").innerHTML = response.portable;
				document.getElementById("ucp_tcf_9").innerHTML = response.easeofChange;
				document.getElementById("ucp_tcf_10").innerHTML = response.concurrentUse;
				document.getElementById("ucp_tcf_11").innerHTML = response.accessforThirdParties;
				document.getElementById("ucp_tcf_12").innerHTML = response.specialSecurity;
				document.getElementById("ucp_tcf_13").innerHTML = response.trainingNeeds;
				//Environmental Complexity Factor
				document.getElementById("ucp_ecf_1").innerHTML = response.familiarwithDevelopmentProcess;
				document.getElementById("ucp_ecf_2").innerHTML = response.applicationExperience;
				document.getElementById("ucp_ecf_3").innerHTML = response.objectOrientedExperience;
				document.getElementById("ucp_ecf_4").innerHTML = response.leadAnalystCapability;
				document.getElementById("ucp_ecf_5").innerHTML = response.motivation;
				document.getElementById("ucp_ecf_6").innerHTML = response.stableRequirements;
				document.getElementById("ucp_ecf_7").innerHTML = response.parttimeStaff;
				document.getElementById("ucp_ecf_8").innerHTML = response.difficulProgrammingLanguage;
	         }
	     });
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
