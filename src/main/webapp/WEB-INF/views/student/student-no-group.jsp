<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
				<div class="row mt-5">
					<div class="col-sm-4 p-2">
						<h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo
							nhóm</h5>
						<div class="accordion card" id="accordionExample">
							<div class="card">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-info collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Tạo nhóm</button>

									</h2>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<label for="" class="h6">Thêm Mã sinh viên của các
											thành viên</label>
										<form>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Nhóm trưởng</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 1</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 2</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 3</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 4</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 5</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<div class="form-group mb-5">
												<button type="submit" class="btn btn-info float-right">Create</button>
											</div>

										</form>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="col-sm-4 p-2">
						<h5 class="text-danger">Danh sách nhóm có trong hệ thống</h5>
						<div class="accordion card" id="accordionExample">
							<div class="card">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-info collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Xem</button>

									</h2>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<label for="" class="h6">Thêm Mã sinh viên của các
											thành viên</label>
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Nhóm trưởng</th>
													<th>Tình trạng</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Tri</td>
													<td>full</td>
													<td></td>
												</tr>
												<tr>
													<td>2</td>
													<td>Lam</td>
													<td>available</td>
													<td><a href="" class="btn btn-outline-secondary">Xin
															vô nhóm <i class="fa fa-sign-in-alt"></i>
													</a></td>
												</tr>
												<tr>
													<td>3</td>
													<td>Vu</td>
													<td>full</td>
													<td></td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>

						</div>
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
</body>
</html> --%><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM - Create Group</title>
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
				<button class="btn btn-dark my-2 my-sm-0" type="submit"><c:out value="${user.getEmail() }"></c:out></button>

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
					<span></span>
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
				<div class="row mt-5">
					<div class="col-sm-4 p-2">
						<h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo
							nhóm</h5>
						<div class="accordion card" id="accordionExample">
							<div class="card">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-info collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Tạo nhóm</button>

									</h2>
								</div>
								<div id="collapseThree" 
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<label for="" class="h6">Thêm Mã sinh viên của các
											thành viên</label>
										<form>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Nhóm trưởng</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 1</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 2</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 3</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 4</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<fieldset class="form-group">
												<label for="exampleInputEmail1">Thành viên 5</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													placeholder="Enter mssv">
												<!-- <small class="text-muted">We'll never share your email with anyone else.</small> -->
											</fieldset>
											<div class="form-group mb-5">
												<button type="submit" class="btn btn-info float-right">Tạo nhóm</button>
											</div>

										</form>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="col-sm-4 p-2">
						<h5 class="text-danger">Danh sách nhóm có trong hệ thống</h5>
						<div class="accordion card" id="accordionExample">
							<div class="card">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-info collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Danh sách nhóm</button>

									</h2>
								</div>
								<div id="collapseThree" 
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Nhóm trưởng</th>
													<th>Tình trạng</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody>
											<%
											int j = 1;
											%>
												<c:forEach items="${studentGroup }" var="g">
												<tr>
													<td><%=j++ %></td>
													<td><c:out value="${ g.getNameLeader()}"></c:out></td>
													<td><c:out value="${ g.getStatus()}"></c:out></td>
													<td>
													<c:if test = "${g.getStatus().equals('Available')}">
											          <a href="" class="btn btn-outline-secondary" id="<c:out value="${ g.getId()}"></c:out>">Xin
															vô nhóm <i class="fa fa-sign-in-alt"></i>
													</a>
											      </c:if>
													</td>
												</tr>												
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	</div>
	<div class="footer"></div>

</body>
</html>