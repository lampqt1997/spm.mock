$(document).ready(function() {

$("#btn-login").click(function() {
	/* Act on the event */
	var username=$("#username").val();
	var password=$("#password").val();
	$.ajax({
		url: 'http://localhost:8080/spm.mock/login/'+username+'/'+password,
		type: 'GET',
		dateType: 'json',
	})
	.done(function(value) {
		console.log(value);
		var v = JSON.parse(value);
		var userid = v.userid;
		var roleId = v.role;
		if (v.loginCheck==1) {
			console.log('login go')
//			var req = new XMLHttpRequest();
//			var url = "http://localhost:8080/spm.mock/handler/login?userId="+userid+"&roleId="+roleId
//			req.open("POST", url, true);
//			req.addEventListener('load', function(){
//				  console.log(req.status);
//				  console.log(req.responseText);
//				  $('html').html("");
//				  $('html').append(req.responseText);
//				});
//			
//			req.send(null);
//			
			// Do something here if login success
			//window.location = 'http://localhost:8080/spm.mock/handler/login/'+userid+'/'+roleId;
			if ( typeof(Storage) !== "undefined") {
		    //	localStorage.setItem('name',v.name);
		    	localStorage.setItem('userid',v.userid);
		    	localStorage.setItem('role',v.role);
		
				} else {
					alert('Trình duyệt của bạn đã cũ, hãy cập nhật phiên bản mới nhất!');
				}
		 
				}else{
					$('#checkLogin').text('Đăng nhập thất bại');
				}

		})
		.fail(function() {
			alert('fail');
		})
		.always(function() {
		});
	
});	
});



