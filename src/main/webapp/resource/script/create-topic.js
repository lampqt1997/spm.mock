$(document).ready(function() {
	$('#create').click(function(event) {
		event.preventDefault();
		
		createTopic();	
	});
	
});



function createTopic() {
	var name = $('#nameProject').val();
	if(name == ''){
		$('#ms-project').text("Tên project không được để trống");
	}
	var description = $('#desciptProject').val();
	var id = $('#userId').val();
	
	$.ajax({
		url: 'http://localhost:8080/spm.mock/topic/create/'+name+'/'+description+'/'+id,
		type: "GET",
		 
		success: function(res) {
			/*
			 if(res.status = 200){
				var data = res.data;
				$('#ms-project').text("");
			 }else if(res.status = 401){
				 $('#ms-project').text("không được để trống tên project");
				
			 }*/
			 if (res) {
				 const Toast = Swal.mixin({
					  toast: true,
					  position: 'top',
					  showConfirmButton: false,
					  timer: 3000
					});

				 Toast.fire({
					  type: 'success',
					  title: 'Bạn đã tạo thành công dự án!'
					}).then((result) => {
						window.location= 'http://localhost:8080/spm.mock/handler/pr-view-topic';
					})
			}
			
         },
         error: function(res) {
             console.log(res);
             
         }
			
	});
}

function getGroup() {
	
	$.ajax({
		url: "http://localhost:8080/spm.mock/group/getall",
		type: "GET",
		contentType: "application/json",
		dataType: "json",
		 success: function(res) {
			 //window.location.href = "http://localhost:8080/spm.mock/handler/pr-view-topic";
			 alert(res);
         },
         error: function(res) {
             console.log(res);
             
         }
			
	});
}


