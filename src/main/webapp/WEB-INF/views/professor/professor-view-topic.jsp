<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<button class="btn btn-dark my-2 my-sm-0" type="submit"> <c:out value="${user.getEmail() }"></c:out></button>

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
							Giáo sư
					</span>
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Xem đề tài
					</span>
				</div>
			</div>
			<div class="col-1 h-100 bg-white p-0 border"
				style="min-height: 870px;">
				<div class="menu ">
					<a href="/spm.mock/handler/pr-view-info " class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-user-edit"></i>
						</p>
						<p class="text-center">Xem  thông tin</p>

					</div>
					</a>
					
					<a href="/spm.mock/handler/change-pass" class="text-info">
					<div class="menu-row border-bottom  pt-3">
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
				<div class="row mt-0">
					<div class="col-sm-8 p-2">
						<!-- <h5 class="text-danger">Bạn chưa tham gia nhóm nào! Hãy Tạo nhóm </h5> -->
						<div class="accordion card" id="accordionExample">
							<div class="">
								<div class="card-header" id="headingThree">
									<h2 class="mb-0">
										<button class="btn btn-link text-dark collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											Danh sách Project</button>

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
													<th>Nội dung</th>
													

												</tr>
											</thead>
											<tbody>
											<c:forEach items="${topics}" var="item">
												<tr>
													<td>${item.getId()}</td>
													<td><a href="" class="btn btn-link text-info">
															${item.getTname()} </a></td>
													<td>${item.getTdescription() }</td>
													
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