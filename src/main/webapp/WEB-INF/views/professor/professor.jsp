<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<div class="row mt-5 p-2">
					<div class="col-1">
						<a href="view-information.html"
							class="text-decoration-none text-info">
							<div class="card border-danger mb-3 h-50 ">

								<div class="card-body text-danger h-100">
									<h5 class="text-center">
										<i class="fa fa-plus"></i>
									</h5>
									<p class="card-text">Tạo đề tài</p>
								</div>
							</div>
						</a>

					</div>
					<div class="col-2 offset-1">
						<a href="view-information.html"
							class="text-decoration-none text-dark">
							<div class="card border-dark mb-3 h-100 ">
								<div class="card-body text-dark h-100">
									<p class="">
										<span class="card-text">Số lượng nhóm đã tạo: </span> 
										<span class="text-info float-right">
											<c:out value="${countGroup }"></c:out>
										</span>
									</p>
									<p class="">
										<span class="card-text">Số lượng nhóm đăng ký: </span> 
										<span class="text-info float-right">
											<c:out value="${countGroupRegister }"></c:out>
										</span>
									</p>
									<p class="">
										<span class="card-text">Số lượng Giáo sư: </span> 
										<span class="text-info float-right">
											<c:out value="${countProfessor }"></c:out>
										</span>
									</p>


								</div>
							</div>
						</a>

					</div>

				</div>
				<div class="row mt-0">
					<div class="col-sm-4 p-2">
						<!-- <h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo nhóm </h5> -->
						<div class="accordion card" id="accordionExample">
							<div class="">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-dark collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Danh sách nhóm đăng ký</button>

									</h2>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Tên nhóm trưởng</th>
													<th>Điểm trung bình</th>
													<th>Thao tác</th>

												</tr>
											</thead>
											<tbody>
											<%
											int j = 1;
											%>
												<c:forEach items="${groups }" var="g">
												<tr>
													<td>
													<%=j++ %>
													</td>
													<td><a href='<c:out value="${g.id }"></c:out>' class="btn btn-link text-info">
															<c:out value="${ g.getLeader()}"></c:out>
														</a>
													</td>
													<td>
														<c:out value="${g.getGrade() }"></c:out>
													</td>
													<td><a href="" class="btn text-success" title="Đồng ý">
															<i class="fa fa-check"></i>
													</a> <a href="" class="btn text-danger" title="Từ chối"> <i
															class="fa fa-times"></i>
													</a></td>
												</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="col-sm-4 p-2">
						<!-- <h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo nhóm </h5> -->
						<div class="accordion card" id="accordionExample">
							<div class="">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-dark collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Danh sách các nhóm khác</button>

									</h2>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Tên nhóm trưởng</th>
													<th>Điểm trung bình</th>
													<th>Đăng ký</th>

												</tr>
											</thead>
											<tbody>
											<%
											int i=1;
											%>
											<c:forEach items="${groupsAnother }" var="g2">
												<tr>
													<td>
													<%=i++ %>
													</td>
													<td><a href='<c:out value="${g2.id }"></c:out>' class="btn btn-link text-info">
															<c:out value="${ g2.getLeader()}"></c:out>
														</a>
													</td>
													<td>
														<c:out value="${g2.getGrade() }"></c:out>
													</td>
													<td>
														<c:out value="${g2.getProfessor() }"></c:out>
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