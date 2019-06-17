<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM </title>

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
							Xem thông tin sinh viên
					</span>
				
				</div>
			</div>
			<div class="col-1 h-100 bg-white p-0 border"
				style="min-height: 870px;">
				<div class="menu ">
					<a href="/spm.mock/handler/pr-view-info" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-user-edit"></i>
						</p>
						<p class="text-center">Xem  thông tin</p>

					</div>
					
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
					<div class="col-8 ">
						<div class="left-title">
							<!-- <h3 class="text-info">Account information</h3> -->
						</div>
						<div class="left-body mt-2">
							<div class="form-group  pl-5">
								<div class="row">
								<p class="h3 text-dark text-uppercase">Thông tin chi tiết</p>
									<div class="col-12">
										<div class="float-left col-6 pl-0">
											<div class="float-left mr-4">
												<img src="https://via.placeholder.com/120" class="rounded"
													alt="...">
											</div>

											<div class="float-left offset-1">
												<p class="h6 text-dark font-weight-bold">1. Mã sinh viên</p>
												<p class="text-dark introduct-elmt">${student.getStudent_code()}</p>
												<p class="h6 text-dark font-weight-bold">2. Tên sinh viên</p>
												<p class="text-dark topic-edu-elmt">${student.getSname()}</p>
												<p class="h6 text-dark font-weight-bold">3. Mô tả</p>
												<p class="text-dark type-teacher-elmt">${student.getSdesription()}</p>
												
												<p class="h6 text-dark text-uppercase">4. Email</p>
												<p class="text-dark type-teacher-elmt">${student.getUser().getUserDetail().getEmail()}</p>
												
												<p class="h6 text-dark font-weight-bold">5. Địa chỉ</p>
												<p class="text-dark introduct-elmt">${student.getUser().getUserDetail().getAddress()}</p>
												<p class="h6 text-dark font-weight-bold">5. Số điện thoại</p>
												<p class="text-dark introduct-elmt">${student.getUser().getUserDetail().getPhone()}</p>
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