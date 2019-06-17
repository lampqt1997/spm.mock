$(document).ready(function() {	
	var id=localStorage.getItem('userId');
	
$("#btn-edit").click(function() {
	event.preventDefault();
	$("#btn-edit").remove();
	var elm= 
	'<div class="float-right h4">'+
		'<button id="btn-cancel" class="btn btn-ouline-info text-secondary"> <i class="fa fa-times"></i> Cancel </button>'+ 
		'<button id="btn-save" class="btn btn-ouline-info text-info"> <i class="fa fa-clone"></i> Save </button>'+
	'</div>';
	
	var elm1=
	'<label for="inputPassword3" class="col-sm-2 form-control-label">Password</label>'+
	'<div class="col-sm-10">'+
		'<div class="input-group mb-3">'+
			'<input type="text" class="form-control" placeholder="********" readonly="">'+
			'<div class="input-group-append">'+
				'<a id="btn-changePassword" class="btn btn-outline-dark" href="http://localhost:8080/spm.mock/handler/change-pass" > Change</a>'+
			'</div>'+
		'</div>'+
	'</div>';
	
	var elm2= '<div class="col-sm-5" style="float: right; margin-right:-2%">'+
				'<div class="input-group mb-3">'+
					'<input id="inputTechnologies" type="text" class="form-control" placeholder="Nhập công nghệ">'+
						'<div class="input-group-append">'+
							'<a id="btn-add-tech" class="btn btn-outline-dark"> Add </a>'+
						'</div>'+
				'</div>'+
			   '</div>';

	
	$('#editSaveCancel-place').append(elm);
	
	$('#password-place').append(elm1);
	
	$('#tech-place').append(elm2);
	
	document.getElementById('inputEmail').removeAttribute('readonly');
	
	document.getElementById('inputAddress').removeAttribute('readonly');
	
	document.getElementById('inputPhone').removeAttribute('readonly');
	
	document.getElementById('inputDescription').removeAttribute('readonly');
	$('#btn-add-tech').click(function(event) {
		var tech=$('#inputTechnologies').val();
		callAjaxAddTech(id,tech);
	});			
$('#btn-save').click(function(event) {
	event.preventDefault();
		var email=$('#inputEmail').val();
		var address=$('#inputAddress').val();
		var phone=$('#inputPhone').val();
		var description=$('#inputDescription').val();
		if(validateEmail(email)){
			if(validationPhone(phone)){
				callAjaxChangeInfo(id,email,address,phone,description);
			}else{
				$('#phoneError').text('Số điện thoại phải là số hoặc không được bỏ trống'); 
			}
		}else{
			$('#emailError').text('Email phải đúng cấu trúc và không được bỏ trống')
		}		
			});
	});	
});
function validationPhone(z){
	 var filter = /^[0-9-+]+$/;
	 if (filter.test(z)) {
		 return true;
	 } else {
		 return false;
	 }
}
function callAjaxChangeInfo(id,email,address,phone,description){
	$.ajax({
		url: 'http://localhost:8080/spm.mock/handler/st-update-info/'+id+'/'+email+'/'+address+'/'+phone+'/'+description,
		type: 'GET',
		dateType: 'json',
	})
	.done(function(value) {
		let timerInterval
		Swal.fire({
		  type: 'success',
		  title: 'Đã update thành công!',
		  html: 'Chuyển tới trang chủ trong <strong></strong> giây.',
		  timer: 2000,
		  onBeforeOpen: () => {
		    Swal.showLoading()
		    timerInterval = setInterval(() => {
		      Swal.getContent().querySelector('strong')
		        .textContent = Swal.getTimerLeft()
		    }, 100)
		  },
		  onClose: () => {
		    clearInterval(timerInterval)
		  }
		}).then((result) => {
			window.location.reload(true);
//		  if (
//		    // Read more about handling dismissals
//		    result.dismiss === Swal.DismissReason.timer
//		  ) {
//		    console.log('I was closed by the timer')
//		  }
		})
	})
		
	.fail(function() {
		
	})
	.always(function() {
	
	});
	}
function validateEmail(mail) {
 	if ((/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))&&(mail.length !=0)){
    return (true)
  	}
    return (false)
	}
function callAjaxAddTech(id,tech){
	$.ajax({
		url: 'http://localhost:8080/spm.mock/handler/st-update-info/tech/'+id+'/'+tech,
		type: 'GET',
	})
	.done(function() {
		var elm4='<button class="btn btn-dark">'+tech+
		'</button>';
		$('#tech-place').append(elm4)
	})
	.fail(function() {
		console.log("error");
	})
	.always(function() {
		console.log("complete");
	});
}




