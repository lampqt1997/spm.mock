$(document).ready(function() {	
	localStorage.setItem('userid',3);
	var id=localStorage.getItem('userid');
	$("#btn-edit").click(function() {
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
				'<a class="btn btn-outline-dark" href="change-pass.html">Change</a>'+
			'</div>'+
		'</div>'+
	'</div>';
	
	var elm2= '<div class="col-sm-5" style="float: right; margin-right:-2%">'+
				'<div class="input-group mb-3">'+
					'<input id="inputTechnologies" type="text" class="form-control" placeholder="Nh?p công ngh?">'+
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
		$.ajax({
			url: 'http://localhost:8080/spm.mock/handler/st-update-info/tech/'+id+'/'+tech,
			type: 'GET',
			dateType: 'json',
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
	
	});		
		
	
	$('#btn-save').click(function(event) {
		var email=$('#inputEmail').val();
		var address=$('#inputAddress').val();
		var phone=$('#inputPhone').val();
		var description=$('#inputDescription').val();
		$.ajax({
			url: 'http://localhost:8080/spm.mock/handler/st-update-info/'+id+'/'+email+'/'+address+'/'+phone+'/'+description,
			type: 'GET',
			dateType: 'json',
		})
		.done(function(value) {
			window.location.reload(true);
		})
			
		.fail(function() {
			
		})
		.always(function() {
		});
		
		
		});
	});		

});



