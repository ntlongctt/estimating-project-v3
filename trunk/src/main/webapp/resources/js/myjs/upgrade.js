function upgrade(){
var key = $('#exampleInputPassword1').val();
$.ajax({
    type : "GET",
    url : "check-upgrade/" + key +".json",
    dataType: 'json',
	contentType: 'application/json',
	mimeType: 'application/json',
    success : function(response) {
    	alter("Chúc Mừng Bạn");
     },
     error: function() {    
	    	alert("Nhập sai mã");
	    }
 });
}