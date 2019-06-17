$(document).ready(function() {
	$('.btn-register-professor').click(function(event) {
		 event.preventDefault()
		var idProfessor = this.id;
		console.log(idProfessor);
		var idUser = localStorage.getItem('userId');

		if ( typeof(idUser) == "undefined") {
			Swal.fire({
			  type: 'error',
			  title: 'Sự cố...',
			  text: 'Đã có lỗi, bạn có thể đăng nhập lại để thực hiện chức năng này!'
			})	 	
			console.log('er');
		}else{
			Swal.fire({
			  title: 'Bạn có muốn đăng ký giáo sư này?',
			  text: "Bạn sẽ không thể quay lại !",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Có, tôi chắc chắn'
			}).then((result) => {
				registerProfessor(idProfessor,idUser)
			})
			
		}
		
	});
});
function registerProfessor(idProfessor,idUser){
	$.ajax({
		url: 'http://localhost:8080/spm.mock/student/register-professor/'+idUser+'/'+idProfessor,
		type: 'GET'
	})
	.done(function(value) {
		console.log(value)
		if (value == 2) {
			const Toast = Swal.mixin({
				  toast: true,
				  position: 'top',
				  showConfirmButton: false,
				  timer: 3000
				});

				Toast.fire({
				  type: 'success',
				  title: 'Bạn đã đăng ký giáo sư thành công!'
				}).then((result) => {
					var countGroup = $('#regisGroup-'+idProfessor).text();
					var num = Number(countGroup);
					$('#regisGroup-'+idProfessor).text(num+1);
				})
				
		}else
		if (value == 1){
			Swal.fire({
				  type: 'warning',
				  text: 'Nhóm bạn đã đăng ký giáo sư này',
				})
		}else
		if (value == 0){
			Swal.fire({
				  type: 'error',
				  text: 'Bạn không phải nhóm trưởng',
				})
		}else{
			Swal.fire({
				  type: 'error',
				  text: 'Đã xảy ra sự cố, bạn hãy thử lại',
				})
		}
		console.log("success");
	})
	.fail(function(value1) {
		console.log(value1);
		console.log("error");
	})
	.always(function(value2) {
		console.log("complete");
	});
	
}