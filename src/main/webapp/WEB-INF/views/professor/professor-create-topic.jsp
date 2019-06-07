<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>SPM - Create Group</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="create_group.css">
<link rel="stylesheet" type="text/css" href="create_group.css">
</head>
<body class="bg-light h-100">
	<div class="header border-bottom">
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<a class="navbar-brand" href="home.html">SPM</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link text-dark"
						href="#">Search <span class="sr-only">(current)</span></a></li>

				</ul>
				<button class="btn btn-dark my-2 my-sm-0" type="submit">Hi,
					Tony</button>

			</div>
		</nav>
	</div>
	<div class="content container-fluid h-100">
		<div class="row">
			<div class="navigation-bar bg-info col-12" style="min-height: 50px">
				<span>Navigation bar</span>
			</div>
			<div class="col-1 h-100 bg-white p-0 border-right"
				style="min-height: 870px;">
				<div class="menu ">
					<div class="menu-row border-bottom pt-2">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>

					<div class="menu-row border-bottom">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>

					<div class="menu-row border-bottom">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>

					<div class="menu-row border-bottom">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>

					<div class="menu-row border-bottom">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>

					<div class="menu-row border-bottom">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>

					<div class="menu-row border-bottom">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Menu item</p>

					</div>
				</div>
			</div>
			<div class="col-11">
				<div class="col-7  rounded border-top">
					<div class="project-title">
						<!-- <h3 class="text-info mt-4">Cập nhật thông tin dự án</h3> -->
					</div>
					<div class="project-body mt-5">
						<form>
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 form-control-label">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="nameProject"
										placeholder="Name Project">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 form-control-label">Description</label>
								<div class="col-sm-10">
									<textarea class="form-control" id="desciptProject" rows="5">
								</textarea>
								</div>
							</div>

							<div class="form-group">
								<div class="float-right">
									<a class="btn btn-secondary" href="project.html">Cancel</a> <a
										class="btn btn-secondary" href="project.html">Create</a>
								</div>

							</div>
						</form>
					</div>
					<div class="project-control"></div>
					<div class="project-title"></div>
				</div>
			</div>
		</div>
	</div>

	</div>
	<div class="footer"></div>





	<script src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>