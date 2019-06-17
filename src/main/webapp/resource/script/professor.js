$(document).ready(function() {
	$('.register-agree').click(function(event) {
		var idUser = localStorage.getItem('userId');
		var idGroup = $(this).attr('value');
		console.log(idUser);
		console.log(idGroup);
		register_agree(idUser,idGroup);
	});
	$('.register-reject').click(function(event) {
		var idUser = localStorage.getItem('userId');
		var idGroup = $(this).attr('value');
		console.log(idUser);
		console.log(idGroup);
		register_reject(idUser,idGroup)
	});
});
function register_agree(idUser,idGroup) {
	$.ajax({
		url: '/spm.mock/professor/agree',
		type: 'POST',
		data: {
			groupId: idGroup,
			professorId: idUser
		},
	})
	.done(function(value) {
		if (value == 1) {
			const Toast = Swal.mixin({
				  toast: true,
				  position: 'top',
				  showConfirmButton: false,
				  timer: 3000
				});

				Toast.fire({
				  type: 'success',
				  title: 'Nhóm sinh viên đã được bạn hướng dẫn!'
				}).then((result) => {
					window.location.reload(true)
				});
		}else{
			Swal.fire({
				  type: 'error',
				  title: 'Sự cố...',
				  text: 'Đã có lỗi, bạn hãy đăng nhập lại và thử lại chức năng này!',
				})
		}
		console.log("success");
	})
	.fail(function() {
		console.log("error");
	})
	.always(function() {
		console.log("complete");
	});
	
}
function register_reject(idUser,idGroup) {
	$.ajax({
		url: '/spm.mock/professor/reject',
		type: 'POST',
		
		data: {
			groupId: idGroup,
			professorId: idUser
		},
	})
	.done(function(value) {
		if (value == 1) {
			const Toast = Swal.mixin({
				  toast: true,
				  position: 'top',
				  showConfirmButton: false,
				  timer: 3000
				});

				Toast.fire({
				  type: 'success',
				  title: 'Bạn đã từ chối hướng dẫn thành công!'
				}).then((result) => {
					window.location.reload(true)
				})
		}else{
			Swal.fire({
				  type: 'error',
				  title: 'Sự cố...',
				  text: 'Đã có lỗi, bạn hãy đăng nhập lại và thử lại chức năng này!',
				})
		}
		console.log("success");
	})
	.fail(function() {
		console.log("error");
	})
	.always(function() {
		console.log("complete");
	});
}