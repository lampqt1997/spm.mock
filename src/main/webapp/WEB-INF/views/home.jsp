
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body class="bg-secondary">
	<div class="header border-bottom">
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<div class="container">
			<a class="navbar-brand" href="home.html">SPM</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active">
						<!-- <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a> -->
					</li>

				</ul>
				<form class="form-inline my-2 my-lg-0">
					<!-- <input class="form-control mr-sm-2" type="search" placeholder="Search"> -->
					<!-- <button class="btn btn-dark my-2 my-sm-0" type="submit">Login</button> -->
				</form>
			</div>
		</div>
		</nav>
	</div>
	<div class="content mt-5">
		<div class="container">
			<div class="row " style="margin-top: 149px;">
				<div class="col-md-5 offset-3 mt-5">
					<div class="modal-content">
						<div class="modal-header">
							<div class="col-12">
								<h3 class=" modal-title text-dark text-center">Đăng nhập</h3>
							</div>

						</div>
						<div class="modal-body">
							<form method="post" action="/spm.mock/login">
								<div class="form-group">
									<div class="d-flex align-items-center small">
										<i class="fa fa-user fa-fw text-muted position-absolute pl-3"></i>
										<input id="username" name="username" type="text" class="form-control py-4"
											placeholder="Email hoặc tài khoản" style="padding-left: 38px;" />
									</div>
								</div>
								<div class="form-group">
									<div class="d-flex align-items-center small">
										<i class="fa fa-key fa-fw text-muted position-absolute pl-3"></i>
										<input id="password" type="password" name="pass" class="form-control py-4"
											placeholder="Mật khẩu" style="padding-left: 38px;" />
									</div>
									<span id="checkLogin" class="text-danger"><c:out value="${err }"></c:out></span>		
								</div>
								<div class="form-group">
									<!-- <a href="register.html"
										class="text-info text-block float-left pl-1">Create new
										account</a> --> 
										<!-- <a href=""
										class="text-info text-block float-right pr-1	">Forget your
										password?</a> -->
								</div>
							
						</div>
						<div class="modal-footer">
							<button type="submit"  id="btn-login" class="btn btn-dark btn-block">Đăng nhập</button>
						</div>
						</form>
					</div>
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
	<!-- <script src="sweetalert2.all.min.js"></script> -->
	
</body>
</html>