
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="spm.mock.group4.entity.Student"%>

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
				<button class="btn btn-dark my-2 my-sm-0" type="submit">
					Hi,
					<c:out value="${student.getSname()}"></c:out>
				</button>

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
				<div class="row mt-5 p-2">
					<div class="col-8  rounded border-top ">
						<div class="left-title">
							<!-- <h3 class="text-info">Account information</h3> -->
						</div>
						<div class="left-body mt-5">

							<form>
								<div class="form-group  pl-1">
									<div class="row">
										<div class="col-12">
											<div class="float-left col-6 pl-0">
												<div class="float-left mr-4">
													<img src="https://via.placeholder.com/120" class="rounded"
														alt="...">
												</div>
												<div class="float-left offset-1">
													<ul class="list-unstyled">
														<li class="h4"><c:out value="${student.getSname()}"></c:out></li>
														<li class="h5 font-italic">Student</li>
														<li></li>
													</ul>
												</div>
											</div>
											<div id="editSaveCancel-place" class="float-right h4">
												<button id="btn-edit" href=""
													class="btn btn-ouline-info text-info">
													<i class="fa fa-cog"></i> Edit
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row ">
									<label for="inputEmail3" class="col-sm-2 form-control-label">Student
										code</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputstcode3"
											readonly
											value="<c:out value="${student.getStudent_code()}"></c:out>">
									</div>
								</div>
								<div class="form-group row ">
									<label for="inputEmail" class="col-sm-2 form-control-label">Email</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" id="inputEmail"
											placeholder="ussera@gmail.com" readonly
											value="<c:out value="${student.getUser().getUserDetail().getEmail()}"></c:out>">
									</div>
								</div>
								<div id="password-place" class="form-group row"></div>
								<div class="form-group row">
									<label for="inputAddress" class="col-sm-2 form-control-label">Address</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputAddress"
											placeholder="Linh Trung, Thu Duc, Ho Chi Minh" readonly
											value="<c:out value="${student.getUser().getUserDetail().getAddress()}"></c:out>">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPhone" class="col-sm-2 form-control-label">Phone</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputPhone"
											placeholder="058 616 0270" readonly
											value="<c:out value="${student.getUser().getUserDetail().getPhone()}"></c:out>">
									</div>
								</div>

								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Technologies</label>
									<div id="tech-place" class="col-sm-10">

										<c:forEach items="${student.getStechnologies().split('-') }"
											var="e">
											<button class="btn btn-dark">
												<c:out value="${e}"></c:out>
											</button>
										</c:forEach>

									</div>
								</div>
								<div class="form-group row">
									<label for="inputDescription"
										class="col-sm-2 form-control-label">Description</label>
									<div class="col-sm-10">
										<textarea class="form-control" id="inputDescription" rows="5"
											readonly><c:out
												value="${student.getSdesription()}"></c:out>

								</textarea>
									</div>
								</div>
							</form>
						</div>
						<div class="left-footer"></div>

					</div>
				</div>

			</div>
		</div>
	</div>

	</div>
	<div class="footer"></div>



	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<script src="<c:url value="/resource/script/sUpdateInfo.js" />"></script>
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
	<script src="<c:url value="/resource/script/sUpdateInfo.js" />"></script>
</body>
</html>