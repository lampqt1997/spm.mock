<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:include page="/WEB-INF/views/common/include.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>SPM</title>

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
					<span class = "text-white mr-2 ml-2 h4">/</span>
					<span class = "text-secondary h6">
							Cập nhật thông tin
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
					<div class="col-8 ">
						<div class="left-title">
							<!-- <h3 class="text-info">Account information</h3> -->
						</div>
						<div class="left-body">

							<form>
								<div class="form-group  pl-2">
									<div class="row">
										<div class="col-12">
											<div class="float-left col-6 pl-0">
												<div class="float-left mr-4">
													<img src="https://via.placeholder.com/120" class="rounded"
														alt="...">

												</div>
												<div class="float-left">
													<ul class="list-unstyled">
														<li class="h4">Tony</li>
														<li class="h5 font-italic">Student</li>
														<li></li>
													</ul>

												</div>
												<input type="file" class="form-control-file pt-4"
													id="exampleFormControlFile1">
											</div>
											<div class="float-right h4">
												<a href="account.html"
													class="btn btn-ouline-info text-secondary"> <i
													class="fa fa-times"></i> Cancel
												</a> <a href="" class="btn btn-ouline-info text-info"> <i
													class="fa fa-clone"></i> Save
												</a>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row mt-5">
									<label for="inputEmail3" class="col-sm-2 form-control-label">Student
										code</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="studentCode"
											placeholder="15130084">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputEmail3" class="col-sm-2 form-control-label">Email</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" id="inputEmail3"
											placeholder="ussera@gmail.com">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Password</label>
									<div class="col-sm-10">
										<!-- <input type="password" class="form-control" id="inputPassword3" placeholder="******" readonly> -->
										<div class="input-group mb-3">
											<input type="text" class="form-control"
												placeholder="********" readonly="">
											<div class="input-group-append">

												<a class="btn btn-outline-dark" href="change-pass.html">Change</a>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Address</label>
									<div class="col-sm-10">
										<input type="password" class="form-control"
											id="inputPassword3"
											placeholder="Linh Trung, Thu Duc, Ho Chi Minh">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Phone</label>
									<div class="col-sm-10">
										<input type="password" class="form-control"
											id="inputPassword3" placeholder="058 616 0270">
									</div>
								</div>

								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Technologies</label>
									<div class="col-sm-10">
										<button class="btn btn-dark">Java</button>
										<button class="btn btn-dark">Mysql</button>
										<button class="float-right btn btn-outline-dark">Add</button>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 form-control-label">Experiod
										Project</label>
									<div class="col-sm-10">
										<textarea class="form-control" id="inputPassword3" rows="4">I have joined a project 6 months ago

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

	</div>
	<div class="footer"></div>

</body>
</html>