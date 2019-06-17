<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM - Create Group</title>

</head>
<body class="bg-light h-100">
	<input type="hidden" value="<c:out value="${userId }"></c:out>"
		id="userId" />
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
				<button class="btn btn-dark my-2 my-sm-0" type="submit">Hi, <c:out value="${user.getEmail() }"></c:out></button>

			</div>
		</nav>
	</div>
	<div class="content container-fluid h-100">
		<div class="row">
			<div class="navigation-bar  col-12" style="min-height: 50px">
				<div class="mt-2">
					<span class = "h5">
						<a class="text-white" href="/spm.mock/"> Home</a>
					</span>
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Change password
					</span>
					
				</div>
			</div>
			<div class="col-1 h-100 bg-white p-0 border"
				style="min-height: 870px;">
				<div class="menu ">
					<a href="/spm.mock/handler/st-view-info" class="text-info">
					<div class="menu-row border-bottom pt-3">
						<p class="text-center mb-0 mt-2">
							<i class="fa fa-user-edit"></i>
						</p>
						<p class="text-center">Xem  thông tin</p>

					</div>
					</a>
					<a href="/spm.mock/handler/st-view-grade" class="text-info">
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
				<div class="row">
					<div class="col-5">
						<div class="left-title"></div>
						<div class="left-body mt-5">

						
								<div class="form-group row mt-5">
									<label for="inputEmail3" class="col-sm-3 form-control-label">Old
										Pasword</label>
									<div class="col-sm-9">
										<input id="oldPassword" type="password" class="form-control"> 
										<span id="checkOldPass" class="text-danger"></span>
									</div>

								</div>
								<div class="form-group row ">
									<label for="inputEmail3" class="col-sm-3 form-control-label">New
										Pasword</label>
									<div class="col-sm-9">
										<input id="newPassword" type="password" class="form-control">
									</div>
								</div>
								<div class="form-group row ">
									<label for="inputEmail3" class="col-sm-3 form-control-label">Confirm
										Pasword</label>
									<div id="pass-confirm-place" class="col-sm-9">
										<input id="passwordConfirm" type="password"
											class="form-control" >
										<div id="checkPassConfirm" class="text-danger"></div>
									</div>
								</div>
								<div class="form-group ">
									<div class="float-right">
										<a class="btn btn-dark" href="account.html">Cancel</a> 
										<a id="btn-changePass" class="btn btn-dark" href="">Change</a>
									</div>
								</div>
						</div>
						<div class="left-footer"></div>

					</div>
				</div>

			</div>
		</div>
	</div>

	</div>
	<div class="footer"></div>

	<script src="<c:url value="/resource/script/change-password.js" />"></script>
</body>
</html>