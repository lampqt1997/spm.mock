$(document).ready(function() {
	var map = new Map();
	
	$('.input-answer').click(function() {
		var id = $(this).attr('valueId');
		var value = this.value;
		console.log(id+' '+value)
		if (map.has(id)) {
			map.delete(id);
			map.set(id, value);
			
		}else{
			map.set(id, value);
		}
		
	});
 $('#btn-submit').click(function(event) {
	 event.preventDefault();
	 var i = map.entries();
	 var userId = localStorage.getItem('userId');
		for ( let x of i) {
			ajax(userId,x[0],x[1]);
		}
		const Toast = Swal.mixin({
			  toast: true,
			  position: 'top',
			  showConfirmButton: false,
			  timer: 3000
			});

			Toast.fire({
			  type: 'success',
			  title: 'Bạn đã nộp bài thành công!'
			}).then((result) => {
				window.location = 'http://localhost:8080/spm.mock/handler/st-score/'+userId+'/1';
			});
	});
 function ajax(id,id_question, answer) {
	console.log('ajax');
	 $.ajax({
		 url:'http://localhost:8080/spm.mock/test/answer/'+id+'/'+id_question+'/'+answer,
		 type: 'GET',
	 })
	 .done(function(value) {
		 console.log(value);
		 console.log("success");
	}).fail(function(value1) {
		 console.log("error");
	}).always(function(value2) {
		 console.log("complete");
	});
}
});