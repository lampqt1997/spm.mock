
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="spm.mock.group4.entity.Student"%>
<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM </title>
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
					<li class="nav-item active"><a class="nav-link" href="/spm.mock/">Trang chủ
							<span class="sr-only">(current)</span>
					</a></li>
					<!-- <li class="nav-item active"><a class="nav-link text-dark"
						href="#">Search <span class="sr-only">(current)</span></a></li>
 -->
				</ul>
				<button class="btn btn-dark my-2 my-sm-0" type="submit">
				
					<c:out value="${student.getSname()}"></c:out>
				</button>

			</div>
		</nav>
	</div>
	<div class="content container-fluid h-100">
		<div class="row">
			<div class="navigation-bar  col-12" style="min-height: 50px">
				<div class="mt-2">
					<span class = "h5">
						<a class="text-white" href="/spm.mock/"> Trang chủ</a>
					</span>
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Sinh viên
					</span>
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Xem thông tin
					</span>
				</div>
			</div>
			<div class="col-1 h-100 bg-white p-0 border"
				style="min-height: 870px;">
				<div class="menu ">
					<a href="/spm.mock/handler/st-view-info/<c:out value="${user.getId()}"></c:out>" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-user-edit"></i>
						</p>
						<p class="text-center">Xem  thông tin</p>

					</div>
					</a>
					<a href="/spm.mock/handler/st-view-list-grade" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-plus"></i>
						</p>
						<p class="text-center">Xem điểm</p>

					</div>
					</a>
					<a href="/spm.mock/handler/change-pass" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-exchange-alt"></i>
						</p>
						<p class="text-center">Đổi mật khẩu</p>

					</div>
					</a>
					<a href="/spm.mock/logout" class="text-info"> 
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-sign-out-alt"></i>
						</p>
						<p class="text-center">Đăng xuất</p>

					</div>
					</a>

					
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
									<label for="inputEmail3" class="col-sm-2 form-control-label">Mã sinh viên
										</label>
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
										<span id="emailError" class="text-danger"></span>
									</div>
									
								</div>
								<div id="password-place" class="form-group row"></div>
								<div class="form-group row">
									<label for="inputAddress" class="col-sm-2 form-control-label">Địa chỉ</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputAddress"
											placeholder="Linh Trung, Thu Duc, Ho Chi Minh" readonly
											value="<c:out value="${student.getUser().getUserDetail().getAddress()}"></c:out>">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPhone" class="col-sm-2 form-control-label">Số điện thoại</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputPhone"
											placeholder="058 616 0270" readonly
											value="<c:out value="${student.getUser().getUserDetail().getPhone()}"></c:out>">
											<span id="phoneError" class="text-danger"></span>
									</div>
									
								</div>

								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Công nghệ</label>
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
										class="col-sm-2 form-control-label">Mô tả</label>
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

	<script src="<c:url value="/resource/script/updateinfo.js" />"></script>
</body>
</html>