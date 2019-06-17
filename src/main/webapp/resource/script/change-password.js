$(document).ready(function() {
	$('#btn-changePass').click(function(event) {
		event.preventDefault();
		var id=localStorage.getItem('userId');
		var old_pass=$('#oldPassword').val();
		var new_pass=$('#newPassword').val();
		var pass_confirm=$('#passwordConfirm').val();
		if(new_pass == pass_confirm){
			callAjax(id,old_pass, new_pass);
		}
		else{
			$('#checkPassConfirm').text('Mật khẩu mới và mật khẩu xác nhận không trùng nhau')
		}
	});
});
function callAjax(id,old_pass, new_pass) {
	
	$.ajax({
		url: 'http://localhost:8080/spm.mock/handler/change-pass/'+id+'/'+old_pass+'/'+new_pass,
		type: 'GET',
	    dataType:"text"
	})
	.done(function(value) {
		if(value == 1){
			const Toast = Swal.mixin({
				  toast: true,
				  position: 'top',
				  showConfirmButton: false,
				  timer: 3000
				});

//				Toast.fire({
//				  type: 'success',
//				  title: 'Đã đổi mật khẩu thành công!'
//				}).then((result) => {
//					setInterval(function(){
//						window.location = 'http://localhost:8080/spm.mock/';
//					}, 500);
//
//				})
					let timerInterval
					Swal.fire({
					  type: 'success',
					  title: 'Đã đổi mật khẩu thành công!',
					  html: 'Chuyển hướng trang chủ trong <strong></strong> giây.',
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
						window.location = 'http://localhost:8080/spm.mock/';
//					  if (
//					    // Read more about handling dismissals
//					    result.dismiss === Swal.DismissReason.timer
//					  ) {
//					    console.log('I was closed by the timer')
//					  }
					})
		   		
		}
		else{
			Swal.fire({
				  type: 'error',
				  title: 'Sự cố...',
				  text: 'Đã có lỗi, Bạn hãy kiểm tra lại!',
				})
		}
	})
	.fail(function() {
		console.log("error");
	})
	.always(function() {
		console.log("complete");
	});
	
}