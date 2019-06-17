<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM</title>

</head>
<body class="bg-light h-100">
	<input type="hidden" value="<c:out value="${userId }"></c:out>" id="userId" />
	<input type="hidden" value="<c:out value="${user }"></c:out>" id="user" />
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
					<li class="nav-item active"><a class="nav-link" href="/spm.mock/">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link text-dark"
						href="#">Search <span class="sr-only">(current)</span></a></li>

				</ul>
				<button class="btn btn-dark my-2 my-sm-0" type="submit">Hi,
					<c:out value="${user.getEmail()}"></c:out>
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
					<a href="/spm.mock/handler/st-do-test"
						class="text-decoration-none text-dark">
						<div class="card border-dark mb-3 h-100 ">
							<div class="card-body text-dark h-100">
								<h5 class="text-center">
									<i class="fa fa-sign-in-alt"></i>
								</h5>
								<p class="card-text">Đi tới bài kiểm tra</p>
							</div>
						</div>
					</a>

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
											Danh sách thành viên</button>

									</h2>
								</div>
								<div id="collapseThree" 
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Tên</th>
													<th>Mã sinh viên</th>

												</tr>
											</thead>
											<tbody>
												<%
													int j = 0;
												%>
												<c:forEach var="i" items="${students }">
													<tr>
														<td><%=j++%></td>
														<td><a
															href="/spm.mock/handler/st-view-st-info/<c:out value="${i.getId() }"></c:out>"
															class="btn btn-link text-info"> <c:out
																	value="${i.getName() }"></c:out>
														</a></td>
														<td><c:out value="${i.getStudentCode() }"></c:out></td>
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
											Danh sách các giáo sư</button>

									</h2>
								</div>
								<div id="collapseThree" 
									aria-labelledby="headingThree" data-parent="#accordionExample">
									<div class="card-body">
										<table class="table table-inverse">
											<thead>
												<tr>
													<th>#</th>
													<th>Tên</th>
													<th>Nhóm đăng ký</th>
													<th>Thao tác</th>

												</tr>
											</thead>

											<tbody>
												<%
													int l = 0;
												%>
												<c:forEach items="${professors}" var="p">
													<tr>
														<td><%=l++%></td>
														<td><a
															href="/spm.mock/handler/st-view-pr-info/${p.getProfesId()}"
															class="btn btn-link text-info"> ${p.getProfesName() } </a></td>
														<td id="regisGroup-${p.getProfesId() }">${p.getGroupRegis() }</td>
														<td><a id="${p.getProfesId()}" href=""
															class="btn btn-outline-secondary btn-register-professor">
																Đăng ký <i class="fa fa-sign-in-alt"></i>
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

				</div>
			</div>
		</div>
	</div>

	</div>
	<div class="footer"></div>

	<script src="<c:url value="/resource/script/get-userid.js" />"></script>
	<script src="<c:url value="/resource/script/student-have-group.js" />"></script>
</body>
</html>