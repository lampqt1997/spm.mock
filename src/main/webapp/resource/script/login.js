$(document).ready(function() {
/*	if(localStorage.getItem('name')!= null){
		var name=localStorage.getItem('name');
		$('#login-btn1').remove();
		$('#register-btn1').remove();
		var elm='<div class="btn-group">'+
  '<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+
   'Hi, '+name+
  '</button>'+
  '<div class="dropdown-menu">'+
  '<a class="dropdown-item" href="profile.html">Xem th�ng tin</a>'+
  '<div class="dropdown-divider"></div>'+
  '<a id="logout-btn" class="dropdown-item" href="#">�ang xu?t</a>'+
  '</div>'+
'</div>';
	
		$('#modal-login').modal('hide');
		$('.c-login').append(elm);

	}
$("#logout-btn").click(function(event) {	
	localStorage.removeItem('name');
	localStorage.removeItem('userid');
	localStorage.removeItem('password');
	localStorage.removeItem('teacher_id');

	$('.btn-group').remove();
	/*var elm='<a id="login-btn1" href="" class="btn btn-outline-success btn-login" data-toggle="modal" data-target="#modal-login">�ang nh?p</a>'+
			' <a id="register-btn1" href="" class="btn btn-outline-success btn-register">�ang k�</a>'+
				'</div>';*/
	//$('.c-login').append(elm);
//	window.location.href='home.html';

//});	

	
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
			window.location = 'http://localhost:8080/spm.mock/handler/login/'+userid+'/'+roleId;
		// Do something here if login success
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



